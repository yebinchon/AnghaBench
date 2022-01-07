; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_window_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_window_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handler_baton = type { i32, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32* (i32*, i32)*, %struct.file_baton* }
%struct.TYPE_4__ = type { i64 }
%struct.file_baton = type { i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_CORRUPT_TEXT_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Checksum mismatch while updating '%s':\0A   expected:  %s\0A     actual:  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @window_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @window_handler(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.handler_baton*, align 8
  %7 = alloca %struct.file_baton*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.handler_baton*
  store %struct.handler_baton* %11, %struct.handler_baton** %6, align 8
  %12 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %13 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %12, i32 0, i32 9
  %14 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  store %struct.file_baton* %14, %struct.file_baton** %7, align 8
  %15 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %16 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %15, i32 0, i32 8
  %17 = load i32* (i32*, i32)*, i32* (i32*, i32)** %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %20 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32* %17(i32* %18, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %3, align 8
  br label %152

30:                                               ; preds = %25, %2
  %31 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %32 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %31, i32 0, i32 5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %95

35:                                               ; preds = %30
  %36 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %37 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @svn_stream_close(i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %91, label %42

42:                                               ; preds = %35
  %43 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %44 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %49 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %57 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %60 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @svn_checksum_match(%struct.TYPE_4__* %58, %struct.TYPE_4__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %42
  %65 = load i32, i32* @SVN_ERR_WC_CORRUPT_TEXT_BASE, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %69 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %72 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @svn_dirent_local_style(i32 %70, i32 %73)
  %75 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %76 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %75, i32 0, i32 5
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %79 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @svn_checksum_to_cstring(%struct.TYPE_4__* %77, i32 %80)
  %82 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %83 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %86 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @svn_checksum_to_cstring(%struct.TYPE_4__* %84, i32 %87)
  %89 = call i32* @svn_error_createf(i32 %65, i32* %66, i32 %67, i32 %74, i32 %81, i32 %88)
  store i32* %89, i32** %8, align 8
  br label %90

90:                                               ; preds = %64, %42
  br label %91

91:                                               ; preds = %90, %35
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32* @svn_error_compose_create(i32* %92, i32* %93)
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %91, %30
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %100 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %105 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %108 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @svn_wc__db_pristine_install_abort(i64 %106, i32 %109)
  %111 = call i32 @svn_error_clear(i32 %110)
  br label %112

112:                                              ; preds = %103, %98
  br label %146

113:                                              ; preds = %95
  %114 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %115 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %118 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @svn_checksum__from_digest_md5(i32 %116, i32 %119)
  %121 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %122 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %124 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %127 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @svn_checksum_dup(i32 %125, i32 %128)
  %130 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %131 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %133 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %136 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %139 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %142 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @svn_wc__db_pristine_install(i64 %134, i32 %137, i32 %140, i32 %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %113, %112
  %147 = load %struct.handler_baton*, %struct.handler_baton** %6, align 8
  %148 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @svn_pool_destroy(i32 %149)
  %151 = load i32*, i32** %8, align 8
  store i32* %151, i32** %3, align 8
  br label %152

152:                                              ; preds = %146, %28
  %153 = load i32*, i32** %3, align 8
  ret i32* %153
}

declare dso_local i32* @svn_stream_close(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_wc__db_pristine_install_abort(i64, i32) #1

declare dso_local i32 @svn_checksum__from_digest_md5(i32, i32) #1

declare dso_local i32 @svn_checksum_dup(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_install(i64, i32, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
