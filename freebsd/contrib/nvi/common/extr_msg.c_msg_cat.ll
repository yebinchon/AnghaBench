; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msg_cat(%struct.TYPE_4__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isdigit(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isdigit(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 124
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %38, i8** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi %struct.TYPE_5__* [ null, %41 ], [ %45, %42 ]
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %8, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @catgets(i64 %58, i32 1, i32 %59, i8* %60)
  store i8* %61, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i64*, i64** %7, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %4, align 8
  br label %82

72:                                               ; preds = %55, %50, %46
  br label %73

73:                                               ; preds = %72, %28, %22, %16, %3
  %74 = load i64*, i64** %7, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i8*, i8** %6, align 8
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %80, %70
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @catgets(i64, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
