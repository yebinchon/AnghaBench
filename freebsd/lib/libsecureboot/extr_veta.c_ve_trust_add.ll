; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veta.c_ve_trust_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veta.c_ve_trust_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ve_trust_add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @stat(i8* %5, %struct.stat* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISDIR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @trust_dir_add(i8* %15)
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @trust_file_add(i8* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @trust_dir_add(i8*) #1

declare dso_local i32 @trust_file_add(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
