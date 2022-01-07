; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_close_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_close_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i64, i32, i64, %struct.edit_baton* }
%struct.TYPE_7__ = type { i64 }
%struct.edit_baton = type { %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { i32 (i32, i32, i32, i32, %struct.TYPE_8__*, i32*)*, i32 (i32, i32, i32, i32*, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32, %struct.TYPE_8__*, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_directory(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dir_baton*, align 8
  %6 = alloca %struct.edit_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.dir_baton*
  store %struct.dir_baton* %12, %struct.dir_baton** %5, align 8
  %13 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %14 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %13, i32 0, i32 10
  %15 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  store %struct.edit_baton* %15, %struct.edit_baton** %6, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %150

29:                                               ; preds = %24, %2
  %30 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %31 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %150, label %34

34:                                               ; preds = %29
  %35 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %36 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  br label %56

43:                                               ; preds = %34
  %44 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %45 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %48 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %51 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @svn_ra_get_dir2(i32 %46, i32* null, i32* null, i32** %8, i32 %49, i32 %52, i32 0, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %43, %39
  %57 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %58 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %57, i32 0, i32 6
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %66 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %65, i32 0, i32 6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @remove_non_prop_changes(i32* %64, %struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %71 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %70, i32 0, i32 6
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %78 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %76, %69
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %84 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %83, i32 0, i32 6
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32* @svn_prop__patch(i32* %82, %struct.TYPE_7__* %85, i32* %86)
  store i32* %87, i32** %10, align 8
  %88 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %89 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %81
  %93 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %94 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32 (i32, i32*, i32, i32*, i32*, i32, %struct.TYPE_8__*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32, %struct.TYPE_8__*, i32*)** %96, align 8
  %98 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %99 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %102 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %106 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %109 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %112 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 %97(i32 %100, i32* null, i32 %103, i32* null, i32* %104, i32 %107, %struct.TYPE_8__* %110, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  br label %147

116:                                              ; preds = %81
  %117 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %118 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32 (i32, i32, i32, i32*, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32*)*, i32 (i32, i32, i32, i32*, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32*)** %120, align 8
  %122 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %123 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %126 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %129 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %134 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %133, i32 0, i32 6
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %137 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %140 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %143 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 %121(i32 %124, i32 %127, i32 %130, i32* %131, i32* %132, %struct.TYPE_7__* %135, i32 %138, %struct.TYPE_8__* %141, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %116, %92
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %76
  br label %150

150:                                              ; preds = %149, %29, %24
  %151 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %152 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %184, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %184, label %158

158:                                              ; preds = %155
  %159 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %160 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32 (i32, i32, i32, i32, %struct.TYPE_8__*, i32*)*, i32 (i32, i32, i32, i32, %struct.TYPE_8__*, i32*)** %162, align 8
  %164 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %165 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %168 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %171 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %174 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %177 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %180 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 %163(i32 %166, i32 %169, i32 %172, i32 %175, %struct.TYPE_8__* %178, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %184

184:                                              ; preds = %158, %155, %150
  %185 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %186 = call i32 @release_dir(%struct.dir_baton* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %188
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_dir2(i32, i32*, i32*, i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @remove_non_prop_changes(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @svn_prop__patch(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @release_dir(%struct.dir_baton*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
