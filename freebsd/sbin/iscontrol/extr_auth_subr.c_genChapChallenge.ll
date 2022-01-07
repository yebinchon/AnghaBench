; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_genChapChallenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_genChapChallenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @genChapChallenge(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ugt i64 %9, 1024
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @read(i32 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @bin2str(i8* %23, i8* %24, i32 %25)
  store i8* %26, i8** %3, align 8
  br label %29

27:                                               ; preds = %12
  %28 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %27, %16, %11
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @bin2str(i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
