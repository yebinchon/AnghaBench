; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tr_realm* (i8*)* @make_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tr_realm* @make_realm(i8* %0) #0 {
  %2 = alloca %struct.tr_realm*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tr_realm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = call %struct.tr_realm* @calloc(i32 1, i32 24)
  store %struct.tr_realm* %8, %struct.tr_realm** %4, align 8
  %9 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %10 = icmp eq %struct.tr_realm* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @free(i8* %12)
  store %struct.tr_realm* null, %struct.tr_realm** %2, align 8
  br label %93

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %17 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %19 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %87, %14
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %28 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %38 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  br label %87

39:                                               ; preds = %31, %25
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %42 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %52 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45, %39
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  store i32 0, i32* %7, align 4
  br label %87

61:                                               ; preds = %53
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %87

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %81 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %80, i32 0, i32 3
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %73, %67
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %82, %66, %56, %36
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %21

90:                                               ; preds = %21
  %91 = load i8*, i8** %6, align 8
  store i8 0, i8* %91, align 1
  %92 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  store %struct.tr_realm* %92, %struct.tr_realm** %2, align 8
  br label %93

93:                                               ; preds = %90, %11
  %94 = load %struct.tr_realm*, %struct.tr_realm** %2, align 8
  ret %struct.tr_realm* %94
}

declare dso_local %struct.tr_realm* @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
