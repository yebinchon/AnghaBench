; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_checksum(%struct.TYPE_4__** %0, i32 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @validate_kind(i32 %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.TYPE_4__* @svn_checksum_create(i32 %16, i32* %17)
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %19, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %62 [
    i32 129, label %21
    i32 128, label %30
    i32 131, label %42
    i32 130, label %52
  ]

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @apr_md5(i8* %26, i8* %27, i64 %28)
  br label %65

30:                                               ; preds = %5
  %31 = call i32 @apr_sha1_init(i32* %12)
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @apr_sha1_update(i32* %12, i8* %32, i32 %34)
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @apr_sha1_final(i8* %40, i32* %12)
  br label %65

42:                                               ; preds = %5
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @svn__fnv1a_32(i8* %43, i64 %44)
  %46 = call i32 @htonl(i32 %45)
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32 %46, i32* %51, align 4
  br label %65

52:                                               ; preds = %5
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @svn__fnv1a_32x4(i8* %53, i64 %54)
  %56 = call i32 @htonl(i32 %55)
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32 %56, i32* %61, align 4
  br label %65

62:                                               ; preds = %5
  %63 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %64 = call i32* @svn_error_create(i32 %63, i32* null, i32* null)
  store i32* %64, i32** %6, align 8
  br label %67

65:                                               ; preds = %52, %42, %30, %21
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %6, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @validate_kind(i32) #1

declare dso_local %struct.TYPE_4__* @svn_checksum_create(i32, i32*) #1

declare dso_local i32 @apr_md5(i8*, i8*, i64) #1

declare dso_local i32 @apr_sha1_init(i32*) #1

declare dso_local i32 @apr_sha1_update(i32*, i8*, i32) #1

declare dso_local i32 @apr_sha1_final(i8*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @svn__fnv1a_32(i8*, i64) #1

declare dso_local i32 @svn__fnv1a_32x4(i8*, i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
