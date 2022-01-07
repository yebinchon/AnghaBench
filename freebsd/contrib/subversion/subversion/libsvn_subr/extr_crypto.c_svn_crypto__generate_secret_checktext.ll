; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_crypto.c_svn_crypto__generate_secret_checktext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_crypto.c_svn_crypto__generate_secret_checktext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cryptographic support is not available\00", align 1
@APR_EGENERAL = common dso_local global i32 0, align 4
@APR_KEY_AES_256 = common dso_local global i32 0, align 4
@APR_MODE_CBC = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MIN_STUFF_LEN = common dso_local global i64 0, align 8
@NUM_ITERATIONS = common dso_local global i32 0, align 4
@SALT_LEN = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_crypto__generate_secret_checktext(%struct.TYPE_11__** %0, %struct.TYPE_11__** %1, %struct.TYPE_11__** %2, i8** %3, %struct.TYPE_12__* %4, %struct.TYPE_11__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %18 = call i32* @svn_error_create(i32 %17, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret i32* %18
}

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
