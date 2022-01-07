; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_alter_file_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_alter_file_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i32*, i32*, i32*)* @alter_file_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alter_file_cb(i8* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.edit_baton*
  store %struct.edit_baton* %19, %struct.edit_baton** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i8* @FSPATH(i8* %20, i32* %21)
  store i8* %22, i8** %16, align 8
  %23 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %24 = call i32 @get_root(i32** %17, %struct.edit_baton* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %17, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @can_modify(i32* %26, i8* %27, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %7
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i32*, i32** %17, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @set_text(i32* %39, i8* %40, i32* %41, i32* %42, i32 %45, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %34, %7
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32*, i32** %17, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @alter_props(i32* %56, i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i8* @FSPATH(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.edit_baton*) #1

declare dso_local i32 @can_modify(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @set_text(i32*, i8*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @alter_props(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
