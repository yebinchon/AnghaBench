; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@CBOR_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@CBOR_FALSE = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@CBOR_STRING = common dso_local global i32 0, align 4
@CBOR_NEGATIVE = common dso_local global i32 0, align 4
@CBOR_UNSIGNED = common dso_local global i32 0, align 4
@CBOR_NLIMIT = common dso_local global i32 0, align 4
@CBOR_ULIMIT = common dso_local global i32 0, align 4
@XOF_PRETTY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i8*)* @cbor_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbor_content(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = call i32 @xo_buf_offset(%struct.TYPE_10__* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @xo_streq(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %18, %4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* @CBOR_TRUE, align 4
  %33 = call i32 @cbor_append(i32* %28, %struct.TYPE_11__* %29, %struct.TYPE_10__* %31, i32 %32, i32 0, i8* null)
  br label %99

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @xo_streq(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* @CBOR_FALSE, align 4
  %44 = call i32 @cbor_append(i32* %39, %struct.TYPE_11__* %40, %struct.TYPE_10__* %42, i32 %43, i32 0, i8* null)
  br label %98

45:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %8, align 8
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strtoull(i8* %54, i8** %12, i32 0)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @ULLONG_MAX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = load i32, i32* @CBOR_STRING, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @cbor_append(i32* %60, %struct.TYPE_11__* %61, %struct.TYPE_10__* %62, i32 %63, i32 %65, i8* %66)
  br label %97

68:                                               ; preds = %53
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @CBOR_NEGATIVE, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @CBOR_UNSIGNED, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %13, align 8
  %84 = sub i64 %83, 1
  store i64 %84, i64* %13, align 8
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @CBOR_NLIMIT, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @CBOR_ULIMIT, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @cbor_encode_uint(%struct.TYPE_10__* %86, i64 %87, i32 %95)
  br label %97

97:                                               ; preds = %94, %59
  br label %98

98:                                               ; preds = %97, %38
  br label %99

99:                                               ; preds = %98, %27
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @xo_get_flags(i32* %100)
  %102 = load i32, i32* @XOF_PRETTY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = load i32, i32* @stdout, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @xo_buf_data(%struct.TYPE_10__* %107, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = ptrtoint i32* %112 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = sub nsw i64 %119, %121
  %123 = inttoptr i64 %122 to i32*
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %126, 2
  %128 = call i32 @cbor_memdump(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32* %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %105, %99
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @xo_buf_offset(%struct.TYPE_10__*) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32 @cbor_append(i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cbor_encode_uint(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @xo_get_flags(i32*) #1

declare dso_local i32 @cbor_memdump(i32, i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @xo_buf_data(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
