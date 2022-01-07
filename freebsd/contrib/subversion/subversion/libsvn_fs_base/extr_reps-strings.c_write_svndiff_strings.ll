; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_write_svndiff_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_write_svndiff_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_svndiff_strings_baton = type { i32, i8, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get new string key\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @write_svndiff_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_svndiff_strings(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.write_svndiff_strings_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.write_svndiff_strings_baton*
  store %struct.write_svndiff_strings_baton* %12, %struct.write_svndiff_strings_baton** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %15 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %20 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 4, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %33 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %37 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %45 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %44, i32 0, i32 1
  store i8 %43, i8* %45, align 4
  br label %46

46:                                               ; preds = %40, %18
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %49 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %52 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %51, i32 0, i32 3
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %57 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %60 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @svn_fs_bdb__string_append(i32 %50, i32** %52, i32 %54, i8* %55, %struct.TYPE_2__* %58, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %67 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %47
  %71 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = call i32* @svn_error_create(i32 %71, i32* null, i32 %72)
  store i32* %73, i32** %4, align 8
  br label %86

74:                                               ; preds = %47
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.write_svndiff_strings_baton*, %struct.write_svndiff_strings_baton** %8, align 8
  %82 = getelementptr inbounds %struct.write_svndiff_strings_baton, %struct.write_svndiff_strings_baton* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %74, %70
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__string_append(i32, i32**, i32, i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
