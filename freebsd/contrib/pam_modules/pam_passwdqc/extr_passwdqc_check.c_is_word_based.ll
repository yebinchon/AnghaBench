; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_word_based.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_word_based.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@_passwdqc_wordset_4k = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*)* @is_word_based to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_word_based(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 6
  store i8 0, i8* %11, align 1
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 4096
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %17 = load i32*, i32** @_passwdqc_wordset_4k, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i8* %16, i32 %21, i32 6)
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %46

31:                                               ; preds = %15
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %33 = call i8* @unify(i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @is_based(%struct.TYPE_4__* %34, i8* %35, i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @clean(i8* %41)
  store i32 1, i32* %4, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @clean(i8* %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @unify(i8*) #1

declare dso_local i64 @is_based(%struct.TYPE_4__*, i8*, i8*, i8*) #1

declare dso_local i32 @clean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
