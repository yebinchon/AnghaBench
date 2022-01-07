; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_get_node_changelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_get_node_changelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_cl_fn_baton = type { i32, i32 (i32, i8*, i8*, i32*)*, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @get_node_changelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_node_changelist(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.get_cl_fn_baton*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.get_cl_fn_baton*
  store %struct.get_cl_fn_baton* %12, %struct.get_cl_fn_baton** %9, align 8
  %13 = load %struct.get_cl_fn_baton*, %struct.get_cl_fn_baton** %9, align 8
  %14 = getelementptr inbounds %struct.get_cl_fn_baton, %struct.get_cl_fn_baton* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_wc__db_read_info(i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %10, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %15, i8* %16, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.get_cl_fn_baton*, %struct.get_cl_fn_baton** %9, align 8
  %22 = getelementptr inbounds %struct.get_cl_fn_baton, %struct.get_cl_fn_baton* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.get_cl_fn_baton*, %struct.get_cl_fn_baton** %9, align 8
  %30 = getelementptr inbounds %struct.get_cl_fn_baton, %struct.get_cl_fn_baton* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32* @svn_hash_gets(i32 %31, i8* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %28, %4
  %36 = load %struct.get_cl_fn_baton*, %struct.get_cl_fn_baton** %9, align 8
  %37 = getelementptr inbounds %struct.get_cl_fn_baton, %struct.get_cl_fn_baton* %36, i32 0, i32 1
  %38 = load i32 (i32, i8*, i8*, i32*)*, i32 (i32, i8*, i8*, i32*)** %37, align 8
  %39 = load %struct.get_cl_fn_baton*, %struct.get_cl_fn_baton** %9, align 8
  %40 = getelementptr inbounds %struct.get_cl_fn_baton, %struct.get_cl_fn_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 %38(i32 %41, i8* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %35, %28, %25
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
