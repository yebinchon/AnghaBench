; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { i8*, %struct.tr_realm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tr_realm*, i8*, i8*)* @make_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_paths(i32 %0, %struct.tr_realm* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr_realm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tr_realm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.tr_realm* %1, %struct.tr_realm** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  store %struct.tr_realm* %15, %struct.tr_realm** %10, align 8
  br label %16

16:                                               ; preds = %79, %4
  %17 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %18 = icmp ne %struct.tr_realm* %17, null
  br i1 %18, label %19, label %83

19:                                               ; preds = %16
  %20 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %21 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %45, %27
  %29 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %30 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %29, i32 0, i32 1
  %31 = load %struct.tr_realm*, %struct.tr_realm** %30, align 8
  %32 = icmp ne %struct.tr_realm* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %35 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %34, i32 0, i32 1
  %36 = load %struct.tr_realm*, %struct.tr_realm** %35, align 8
  %37 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %33, %28
  %44 = phi i1 [ false, %28 ], [ %42, %33 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %47 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %46, i32 0, i32 1
  %48 = load %struct.tr_realm*, %struct.tr_realm** %47, align 8
  store %struct.tr_realm* %48, %struct.tr_realm** %10, align 8
  br label %28

49:                                               ; preds = %43
  %50 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %51 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %50, i32 0, i32 1
  %52 = load %struct.tr_realm*, %struct.tr_realm** %51, align 8
  %53 = icmp ne %struct.tr_realm* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %56 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %55, i32 0, i32 1
  %57 = load %struct.tr_realm*, %struct.tr_realm** %56, align 8
  %58 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %13, align 8
  br label %62

60:                                               ; preds = %49
  %61 = load i8*, i8** %9, align 8
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @make_path(i32 %63, %struct.tr_realm* %64, i8* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %72 = call i32 @free_realms(%struct.tr_realm* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %84

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %19
  %76 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %77 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %12, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %81 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %80, i32 0, i32 1
  %82 = load %struct.tr_realm*, %struct.tr_realm** %81, align 8
  store %struct.tr_realm* %82, %struct.tr_realm** %10, align 8
  br label %16

83:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @make_path(i32, %struct.tr_realm*, i8*, i8*) #1

declare dso_local i32 @free_realms(%struct.tr_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
