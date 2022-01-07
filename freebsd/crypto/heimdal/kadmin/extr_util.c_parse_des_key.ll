; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_parse_des_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_parse_des_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32**, i64 }

@.str = private unnamed_addr constant [37 x i8] c"bad length, should be 16 for DES key\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"non-hex character\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KRB5_PW_SALT = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_MD5 = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_MD4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_des_key(i8* %0, %struct.TYPE_3__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp ne i32 %15, 16
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i32 1, i32* %4, align 4
  br label %157

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @hex2n(i8 signext %29)
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @hex2n(i8 signext %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %23
  %45 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  store i32 1, i32* %4, align 4
  br label %157

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %47, 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %48, %49
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %53
  store i8 %51, i8* %54, align 1
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %20

58:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %141, %58
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %144

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %73, i32* %80, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 8, i32* %87, align 4
  %88 = call i32* @malloc(i32 8)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  store i32* %88, i32** %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %62
  %106 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %106, align 8
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %4, align 4
  br label %157

108:                                              ; preds = %62
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %118 = call i32 @memcpy(i32* %116, i8* %117, i32 8)
  %119 = load i32, i32* @KRB5_PW_SALT, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %119, i32* %126, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 0, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %108
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %59

144:                                              ; preds = %59
  %145 = load i32, i32* @ETYPE_DES_CBC_MD5, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* @ETYPE_DES_CBC_MD4, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %151, i32* %156, align 4
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %144, %105, %44, %17
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hex2n(i8 signext) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
