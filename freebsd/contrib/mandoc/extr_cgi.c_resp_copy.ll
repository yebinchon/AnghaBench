; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @resp_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resp_copy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fflush(i32 %11)
  br label %13

13:                                               ; preds = %18, %10
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %16 = call i32 @read(i32 %14, i8* %15, i32 4096)
  store i32 %16, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @STDOUT_FILENO, align 4
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @write(i32 %19, i8* %20, i32 %21)
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @close(i32 %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
