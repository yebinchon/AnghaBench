; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_derived-key-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_derived-key-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i64, i8*, i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@tests = common dso_local global %struct.testcase* null, align 8
@KEYTYPE_DES3 = common dso_local global i32 0, align 4
@MAXSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_derive_key\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"derive_key failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"should be: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0Aresult was: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.testcase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = call i64 @krb5_init_context(i32* %7)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.testcase*, %struct.testcase** @tests, align 8
  store %struct.testcase* %21, %struct.testcase** %6, align 8
  br label %22

22:                                               ; preds = %121, %20
  %23 = load %struct.testcase*, %struct.testcase** %6, align 8
  %24 = getelementptr inbounds %struct.testcase, %struct.testcase* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %124

27:                                               ; preds = %22
  %28 = load i32, i32* @KEYTYPE_DES3, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @MAXSIZE, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.testcase*, %struct.testcase** %6, align 8
  %34 = getelementptr inbounds %struct.testcase, %struct.testcase* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.testcase*, %struct.testcase** %6, align 8
  %40 = getelementptr inbounds %struct.testcase, %struct.testcase* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.testcase*, %struct.testcase** %6, align 8
  %43 = getelementptr inbounds %struct.testcase, %struct.testcase* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.testcase*, %struct.testcase** %6, align 8
  %46 = getelementptr inbounds %struct.testcase, %struct.testcase* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @krb5_derive_key(i32 %38, %struct.TYPE_7__* %10, i64 %41, i32 %44, i32 %47, %struct.TYPE_7__** %11)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %27
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @krb5_err(i32 %52, i32 1, i64 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %27
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.testcase*, %struct.testcase** %6, align 8
  %61 = getelementptr inbounds %struct.testcase, %struct.testcase* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @memcmp(i8* %59, i32* %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %55
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %12, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %92, %69
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.testcase*, %struct.testcase** %6, align 8
  %85 = getelementptr inbounds %struct.testcase, %struct.testcase* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %76

95:                                               ; preds = %76
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %112, %95
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %97

115:                                              ; preds = %97
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %55
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = call i32 @krb5_free_keyblock(i32 %118, %struct.TYPE_7__* %119)
  br label %121

121:                                              ; preds = %117
  %122 = load %struct.testcase*, %struct.testcase** %6, align 8
  %123 = getelementptr inbounds %struct.testcase, %struct.testcase* %122, i32 1
  store %struct.testcase* %123, %struct.testcase** %6, align 8
  br label %22

124:                                              ; preds = %22
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @krb5_free_context(i32 %125)
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @krb5_derive_key(i32, %struct.TYPE_7__*, i64, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_free_keyblock(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
