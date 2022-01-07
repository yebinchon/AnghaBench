; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_export_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_export_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@GSS_KRB5_MECHANISM = common dso_local global %struct.TYPE_5__* null, align 8
@GSS_S_BAD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\04\01\00\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__*, i32*)* @import_export_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_export_name(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 10, %19
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @GSS_S_BAD_NAME, align 4
  store i32 %23, i32* %5, align 4
  br label %141

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = call i64 @memcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 2
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %68, label %42

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 6
  br i1 %47, label %68, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @memcmp(i8* %59, i8* %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57, %48, %42, %32, %24
  %69 = load i32, i32* @GSS_S_BAD_NAME, align 4
  store i32 %69, i32* %5, align 4
  br label %141

70:                                               ; preds = %57
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 6, %73
  %75 = load i8*, i8** %10, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 24
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 16
  %88 = or i32 %82, %87
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %94, %98
  store i32 %99, i32* %11, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 10
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_KRB5_MECHANISM, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %106, %109
  %111 = icmp sgt i32 %102, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %70
  %113 = load i32, i32* @GSS_S_BAD_NAME, align 4
  store i32 %113, i32* %5, align 4
  br label %141

114:                                              ; preds = %70
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i8* @malloc(i32 %116)
  store i8* %117, i8** %13, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %123, i32* %5, align 4
  br label %141

124:                                              ; preds = %114
  %125 = load i8*, i8** %13, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @memcpy(i8* %125, i8* %126, i32 %127)
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i8*, i8** %13, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @parse_krb5_name(i32* %133, i32 %134, i8* %135, i32* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i8*, i8** %13, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %124, %120, %112, %68, %22
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @parse_krb5_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
