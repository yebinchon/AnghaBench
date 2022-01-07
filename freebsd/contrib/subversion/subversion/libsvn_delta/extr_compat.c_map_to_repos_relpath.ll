; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_map_to_repos_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_map_to_repos_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_edit_baton = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ev2_edit_baton*, i8*, i32*)* @map_to_repos_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_to_repos_relpath(%struct.ev2_edit_baton* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ev2_edit_baton*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.ev2_edit_baton* %0, %struct.ev2_edit_baton** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @svn_path_is_url(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %5, align 8
  %13 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @svn_uri_skip_ancestor(i32 %14, i8* %15, i32* %16)
  store i8* %17, i8** %4, align 8
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %5, align 8
  %20 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  br label %32

30:                                               ; preds = %18
  %31 = load i8*, i8** %6, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i8* [ %29, %27 ], [ %31, %30 ]
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @svn_relpath_join(i32 %21, i8* %33, i32* %34)
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %32, %11
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
