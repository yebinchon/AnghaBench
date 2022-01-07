; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_verify_index_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_verify_index_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN__STREAM_CHUNK_SIZE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s checksum mismatch in file %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32, i32*, i32 (i8*)*, i8*, i32*)* @verify_index_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_index_checksum(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 (i8*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 (i8*)* %5, i32 (i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* @svn_checksum_md5, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = call i32* @svn_checksum_ctx_create(i32 %31, i32* %32)
  store i32* %33, i32** %21, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @APR_SET, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @svn_io_file_seek(i32* %34, i32 %35, i32* %11, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %72, %8
  %40 = load i32, i32* %19, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, %25
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i64 [ %25, %46 ], [ %49, %47 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %22, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %22, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @svn_io_file_read_full2(i32* %53, i8* %27, i32 %54, i32* null, i32* null, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %21, align 8
  %59 = load i32, i32* %22, align 4
  %60 = call i32 @svn_checksum_update(i32* %58, i8* %27, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %19, align 4
  %65 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %66 = icmp ne i32 (i8*)* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 %68(i8* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %67, %50
  br label %39

73:                                               ; preds = %39
  %74 = load i32*, i32** %21, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @svn_checksum_final(i32** %20, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %20, align 8
  %80 = call i32 @svn_checksum_match(i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %73
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @svn_io_file_name_get(i8** %23, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %23, align 8
  %93 = call i32 @svn_checksum_mismatch_err(i32* %87, i32* %88, i32* %89, i32 %90, i8* %91, i8* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %82, %73
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  %97 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @svn_checksum_ctx_create(i32, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_io_file_seek(i32*, i32, i32*, i32*) #2

declare dso_local i32 @svn_io_file_read_full2(i32*, i8*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @svn_checksum_update(i32*, i8*, i32) #2

declare dso_local i32 @svn_checksum_final(i32**, i32*, i32*) #2

declare dso_local i32 @svn_checksum_match(i32*, i32*) #2

declare dso_local i32 @svn_io_file_name_get(i8**, i32*, i32*) #2

declare dso_local i32 @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i8*, i8*) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
