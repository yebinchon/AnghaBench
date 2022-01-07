; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_string-to-key-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_string-to-key-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i8*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tests = common dso_local global %struct.testcase* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_parse_name %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_string_to_key\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"string_to_key(%s, %s) failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"should be: \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\0Aresult was: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.testcase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
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
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @krb5_set_default_realm(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.testcase*, %struct.testcase** @tests, align 8
  store %struct.testcase* %23, %struct.testcase** %6, align 8
  br label %24

24:                                               ; preds = %129, %20
  %25 = load %struct.testcase*, %struct.testcase** %6, align 8
  %26 = getelementptr inbounds %struct.testcase, %struct.testcase* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %132

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.testcase*, %struct.testcase** %6, align 8
  %32 = getelementptr inbounds %struct.testcase, %struct.testcase* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @krb5_parse_name(i32 %30, i8* %33, i32* %11)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.testcase*, %struct.testcase** %6, align 8
  %41 = getelementptr inbounds %struct.testcase, %struct.testcase* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %38, i32 1, i64 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %37, %29
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.testcase*, %struct.testcase** %6, align 8
  %47 = getelementptr inbounds %struct.testcase, %struct.testcase* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.testcase*, %struct.testcase** %6, align 8
  %50 = getelementptr inbounds %struct.testcase, %struct.testcase* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @krb5_string_to_key(i32 %45, i32 %48, i8* %51, i32 %52, %struct.TYPE_6__* %10)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %57, i32 1, i64 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @krb5_free_principal(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.testcase*, %struct.testcase** %6, align 8
  %68 = getelementptr inbounds %struct.testcase, %struct.testcase* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @memcmp(i8* %66, i32* %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %13, align 8
  %79 = load %struct.testcase*, %struct.testcase** %6, align 8
  %80 = getelementptr inbounds %struct.testcase, %struct.testcase* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.testcase*, %struct.testcase** %6, align 8
  %83 = getelementptr inbounds %struct.testcase, %struct.testcase* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %81, i8* %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %102, %75
  %88 = load i32, i32* %12, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.testcase*, %struct.testcase** %6, align 8
  %95 = getelementptr inbounds %struct.testcase, %struct.testcase* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %87

105:                                              ; preds = %87
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %121, %105
  %108 = load i32, i32* %12, align 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %107

124:                                              ; preds = %107
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %60
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @krb5_free_keyblock_contents(i32 %127, %struct.TYPE_6__* %10)
  br label %129

129:                                              ; preds = %126
  %130 = load %struct.testcase*, %struct.testcase** %6, align 8
  %131 = getelementptr inbounds %struct.testcase, %struct.testcase* %130, i32 1
  store %struct.testcase* %131, %struct.testcase** %6, align 8
  br label %24

132:                                              ; preds = %24
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @krb5_free_context(i32 %133)
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @krb5_set_default_realm(i32, i8*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_string_to_key(i32, i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
