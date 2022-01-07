; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_apply_propedit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_apply_propedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_edit_baton = type { i32, i32, i32 (i32**, i32, i8*, i64, i32, i32*)* }
%struct.change_node = type { i64, i64, i8*, i64, i64, i32* }

@svn_node_unknown = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ev2_edit_baton*, i8*, i64, i64, i8*, i32*, i32*)* @apply_propedit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_propedit(%struct.ev2_edit_baton* %0, i8* %1, i64 %2, i64 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ev2_edit_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.change_node*, align 8
  store %struct.ev2_edit_baton* %0, %struct.ev2_edit_baton** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.change_node* @locate_change(%struct.ev2_edit_baton* %16, i8* %17)
  store %struct.change_node* %18, %struct.change_node** %15, align 8
  %19 = load %struct.change_node*, %struct.change_node** %15, align 8
  %20 = getelementptr inbounds %struct.change_node, %struct.change_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @svn_node_unknown, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %7
  %25 = load %struct.change_node*, %struct.change_node** %15, align 8
  %26 = getelementptr inbounds %struct.change_node, %struct.change_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %7
  %31 = phi i1 [ true, %7 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.change_node*, %struct.change_node** %15, align 8
  %36 = getelementptr inbounds %struct.change_node, %struct.change_node* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.change_node*, %struct.change_node** %15, align 8
  %38 = getelementptr inbounds %struct.change_node, %struct.change_node* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @SVN_IS_VALID_REVNUM(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.change_node*, %struct.change_node** %15, align 8
  %44 = getelementptr inbounds %struct.change_node, %struct.change_node* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %42, %30
  %49 = phi i1 [ true, %30 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.change_node*, %struct.change_node** %15, align 8
  %54 = getelementptr inbounds %struct.change_node, %struct.change_node* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.change_node*, %struct.change_node** %15, align 8
  %56 = getelementptr inbounds %struct.change_node, %struct.change_node* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %117

59:                                               ; preds = %48
  %60 = load %struct.change_node*, %struct.change_node** %15, align 8
  %61 = getelementptr inbounds %struct.change_node, %struct.change_node* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %66 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %65, i32 0, i32 2
  %67 = load i32 (i32**, i32, i8*, i64, i32, i32*)*, i32 (i32**, i32, i8*, i64, i32, i32*)** %66, align 8
  %68 = load %struct.change_node*, %struct.change_node** %15, align 8
  %69 = getelementptr inbounds %struct.change_node, %struct.change_node* %68, i32 0, i32 5
  %70 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %71 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.change_node*, %struct.change_node** %15, align 8
  %74 = getelementptr inbounds %struct.change_node, %struct.change_node* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.change_node*, %struct.change_node** %15, align 8
  %77 = getelementptr inbounds %struct.change_node, %struct.change_node* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %80 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 %67(i32** %69, i32 %72, i8* %75, i64 %78, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %116

85:                                               ; preds = %59
  %86 = load %struct.change_node*, %struct.change_node** %15, align 8
  %87 = getelementptr inbounds %struct.change_node, %struct.change_node* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %93 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @apr_hash_make(i32 %94)
  %96 = load %struct.change_node*, %struct.change_node** %15, align 8
  %97 = getelementptr inbounds %struct.change_node, %struct.change_node* %96, i32 0, i32 5
  store i32* %95, i32** %97, align 8
  br label %115

98:                                               ; preds = %85
  %99 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %100 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %99, i32 0, i32 2
  %101 = load i32 (i32**, i32, i8*, i64, i32, i32*)*, i32 (i32**, i32, i8*, i64, i32, i32*)** %100, align 8
  %102 = load %struct.change_node*, %struct.change_node** %15, align 8
  %103 = getelementptr inbounds %struct.change_node, %struct.change_node* %102, i32 0, i32 5
  %104 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %105 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %110 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 %101(i32** %103, i32 %106, i8* %107, i64 %108, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %115

115:                                              ; preds = %98, %91
  br label %116

116:                                              ; preds = %115, %64
  br label %117

117:                                              ; preds = %116, %48
  %118 = load i32*, i32** %13, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.change_node*, %struct.change_node** %15, align 8
  %122 = getelementptr inbounds %struct.change_node, %struct.change_node* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @svn_hash_sets(i32* %123, i8* %124, i32* null)
  br label %141

126:                                              ; preds = %117
  %127 = load %struct.change_node*, %struct.change_node** %15, align 8
  %128 = getelementptr inbounds %struct.change_node, %struct.change_node* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %131 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i8* @apr_pstrdup(i32 %132, i8* %133)
  %135 = load i32*, i32** %13, align 8
  %136 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %8, align 8
  %137 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32* @svn_string_dup(i32* %135, i32 %138)
  %140 = call i32 @svn_hash_sets(i32* %129, i8* %134, i32* %139)
  br label %141

141:                                              ; preds = %126, %120
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %142
}

declare dso_local %struct.change_node* @locate_change(%struct.ev2_edit_baton*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32* @svn_string_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
