; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_dir_baton = type { i32, i32, %struct.ev2_edit_baton* }
%struct.ev2_edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*, i8**)* @ev2_open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ev2_dir_baton*, align 8
  %10 = alloca %struct.ev2_edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.ev2_dir_baton* @apr_pcalloc(i32* %11, i32 16)
  store %struct.ev2_dir_baton* %12, %struct.ev2_dir_baton** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ev2_edit_baton*
  store %struct.ev2_edit_baton* %14, %struct.ev2_edit_baton** %10, align 8
  %15 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %16 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %17 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %16, i32 0, i32 2
  store %struct.ev2_edit_baton* %15, %struct.ev2_edit_baton** %17, align 8
  %18 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %19 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %22 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @apr_pstrdup(i32 %20, i32 %23)
  %25 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %26 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %29 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %31 = bitcast %struct.ev2_dir_baton* %30 to i8*
  %32 = load i8**, i8*** %8, align 8
  store i8* %31, i8** %32, align 8
  %33 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %34 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = icmp ne i32 (i32, i32)* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %4
  %40 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %41 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %10, align 8
  %46 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %44(i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %39, %4
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local %struct.ev2_dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
