; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum_parse_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum_parse_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@svn_checksum_parse_hex.xdigitval = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_CHECKSUM_PARSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_checksum_parse_hex(%struct.TYPE_4__** %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8 0, i8* %12, align 1
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %5, align 8
  br label %102

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @validate_kind(i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call %struct.TYPE_4__* @svn_checksum_create(i32 %25, i32* %26)
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %13, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DIGESTSIZE(i32 %34)
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %92, %21
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* @svn_checksum_parse_hex.xdigitval, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %14, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @svn_checksum_parse_hex.xdigitval, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %15, align 1
  %60 = load i8, i8* %14, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %67, label %63

63:                                               ; preds = %40
  %64 = load i8, i8* %15, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %40
  %68 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_PARSE, align 4
  %69 = call i32* @svn_error_create(i32 %68, i32* null, i32* null)
  store i32* %69, i32** %5, align 8
  br label %102

70:                                               ; preds = %63
  %71 = load i8, i8* %14, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 4
  %74 = load i8, i8* %15, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %77, i8* %81, align 1
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %12, align 1
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %36

95:                                               ; preds = %36
  %96 = load i8, i8* %12, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %99, align 8
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %5, align 8
  br label %102

102:                                              ; preds = %100, %67, %18
  %103 = load i32*, i32** %5, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @validate_kind(i32) #1

declare dso_local %struct.TYPE_4__* @svn_checksum_create(i32, i32*) #1

declare dso_local i32 @DIGESTSIZE(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
