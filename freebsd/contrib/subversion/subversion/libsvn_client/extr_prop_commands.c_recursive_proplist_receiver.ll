; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_recursive_proplist_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_recursive_proplist_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recursive_proplist_receiver_baton = type { i8*, i8*, i32, i32 (i32, i8*, i32*, i32*, i32*)*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @recursive_proplist_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recursive_proplist_receiver(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.recursive_proplist_receiver_baton*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.recursive_proplist_receiver_baton*
  store %struct.recursive_proplist_receiver_baton* %13, %struct.recursive_proplist_receiver_baton** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %15 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %21 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %19, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %27 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %30 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %66

31:                                               ; preds = %18, %4
  %32 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %33 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %38 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %37, i32 0, i32 3
  %39 = load i32 (i32, i8*, i32*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*, i32*)** %38, align 8
  %40 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %41 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %44 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %49 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %53 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i8* [ %50, %47 ], [ %54, %51 ]
  %57 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %58 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 %39(i32 %42, i8* %56, i32* null, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %64 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %55, %31
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %68 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %73 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %78 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %81 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @svn_dirent_skip_ancestor(i8* %82, i8* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i8* @svn_dirent_join(i8* %79, i32 %84, i32* %85)
  store i8* %86, i8** %10, align 8
  br label %89

87:                                               ; preds = %71, %66
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %10, align 8
  br label %89

89:                                               ; preds = %87, %76
  %90 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %91 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %90, i32 0, i32 3
  %92 = load i32 (i32, i8*, i32*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*, i32*)** %91, align 8
  %93 = load %struct.recursive_proplist_receiver_baton*, %struct.recursive_proplist_receiver_baton** %9, align 8
  %94 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 %92(i32 %95, i8* %96, i32* %97, i32* %98, i32* %99)
  %101 = call i32* @svn_error_trace(i32 %100)
  ret i32* %101
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
