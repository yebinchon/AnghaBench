; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_dump_usershell.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getusershell_test.c_dump_usershell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usershell = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(null)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usershell*)* @dump_usershell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_usershell(%struct.usershell* %0) #0 {
  %2 = alloca %struct.usershell*, align 8
  %3 = alloca [2048 x i8], align 16
  store %struct.usershell* %0, %struct.usershell** %2, align 8
  %4 = load %struct.usershell*, %struct.usershell** %2, align 8
  %5 = icmp ne %struct.usershell* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.usershell*, %struct.usershell** %2, align 8
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %9 = call i32 @sdump_usershell(%struct.usershell* %7, i8* %8, i32 2048)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @sdump_usershell(%struct.usershell*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
