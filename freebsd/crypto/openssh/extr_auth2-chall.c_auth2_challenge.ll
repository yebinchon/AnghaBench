; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_auth2_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-chall.c_auth2_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32* }

@.str = private unnamed_addr constant [33 x i8] c"auth2_challenge: user=%s devs=%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<nouser>\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<no devs>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth2_challenge(%struct.ssh* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ssh*, %struct.ssh** %4, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %25 ]
  %28 = call i32 @debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %50

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i32* @kbdint_alloc(i8* %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.ssh*, %struct.ssh** %4, align 8
  %49 = call i32 @auth2_challenge_start(%struct.ssh* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @debug(i8*, i8*, i8*) #1

declare dso_local i32* @kbdint_alloc(i8*) #1

declare dso_local i32 @auth2_challenge_start(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
