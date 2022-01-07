; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_do_dir_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_do_dir_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*, i32*)* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @do_dir_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_dir_diff(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i64 %6, i64 %7, i8* %8, %struct.TYPE_15__* %9, %struct.TYPE_16__* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i8* %8, i8** %22, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %24, align 8
  store i32* %11, i32** %25, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %29, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %30, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i8* @svn_dirent_skip_ancestor(i8* %37, i8* %38)
  store i8* %39, i8** %26, align 8
  %40 = load i64, i64* %19, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %12
  %43 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %44 = load i32*, i32** %25, align 8
  %45 = call i32* @svn_diff__source_create(i32 %43, i32* %44)
  store i32* %45, i32** %27, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %25, align 8
  %51 = load i32*, i32** %25, align 8
  %52 = call i32 @get_props(i32** %32, i8* %46, i32 %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %55

54:                                               ; preds = %12
  store i32* null, i32** %27, align 8
  store i32* null, i32** %32, align 8
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %60 = load i32*, i32** %25, align 8
  %61 = call i32* @svn_diff__source_create(i32 %59, i32* %60)
  store i32* %61, i32** %28, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %25, align 8
  %67 = load i32*, i32** %25, align 8
  %68 = call i32 @get_props(i32** %33, i8* %62, i32 %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %71

70:                                               ; preds = %55
  store i32* null, i32** %28, align 8
  store i32* null, i32** %33, align 8
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = load i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*, i32*)*, i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*, i32*)** %73, align 8
  %75 = load i8*, i8** %26, align 8
  %76 = load i32*, i32** %27, align 8
  %77 = load i32*, i32** %28, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %80 = load i32*, i32** %25, align 8
  %81 = load i32*, i32** %25, align 8
  %82 = call i32 %74(i8** %31, i64* %29, i64* %30, i8* %75, i32* %76, i32* %77, i32* null, i8* %78, %struct.TYPE_15__* %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i64, i64* %30, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %71
  %87 = load i64, i64* %21, align 8
  %88 = load i64, i64* @svn_depth_files, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i8*, i8** %31, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %102 = load i32*, i32** %25, align 8
  %103 = call i32 @inner_dir_diff(i8* %91, i8* %92, i8* %93, i8* %94, i64 %95, i64 %96, i64 %97, i64 %98, i8* %99, %struct.TYPE_15__* %100, %struct.TYPE_16__* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  br label %105

105:                                              ; preds = %90, %86
  br label %112

106:                                              ; preds = %71
  %107 = load i64, i64* %29, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %13, align 8
  br label %193

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %105
  %113 = load i32*, i32** %32, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %145

115:                                              ; preds = %112
  %116 = load i32*, i32** %33, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load i32*, i32** %33, align 8
  %120 = load i32*, i32** %32, align 8
  %121 = load i32*, i32** %25, align 8
  %122 = call i32 @svn_prop_diffs(%struct.TYPE_17__** %34, i32* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %118
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32 (i8*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, %struct.TYPE_15__*, i32*)** %130, align 8
  %132 = load i8*, i8** %26, align 8
  %133 = load i32*, i32** %27, align 8
  %134 = load i32*, i32** %28, align 8
  %135 = load i32*, i32** %32, align 8
  %136 = load i32*, i32** %33, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %138 = load i8*, i8** %31, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %140 = load i32*, i32** %25, align 8
  %141 = call i32 %131(i8* %132, i32* %133, i32* %134, i32* %135, i32* %136, %struct.TYPE_17__* %137, i8* %138, %struct.TYPE_15__* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %143, i32** %13, align 8
  br label %193

144:                                              ; preds = %118
  br label %145

145:                                              ; preds = %144, %115, %112
  %146 = load i32*, i32** %27, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load i32*, i32** %28, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)** %153, align 8
  %155 = load i8*, i8** %26, align 8
  %156 = load i32*, i32** %27, align 8
  %157 = load i32*, i32** %28, align 8
  %158 = load i8*, i8** %31, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %160 = load i32*, i32** %25, align 8
  %161 = call i32 %154(i8* %155, i32* %156, i32* %157, i8* %158, %struct.TYPE_15__* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  br label %191

163:                                              ; preds = %148, %145
  %164 = load i32*, i32** %27, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)** %168, align 8
  %170 = load i8*, i8** %26, align 8
  %171 = load i32*, i32** %27, align 8
  %172 = load i32*, i32** %32, align 8
  %173 = load i8*, i8** %31, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %175 = load i32*, i32** %25, align 8
  %176 = call i32 %169(i8* %170, i32* %171, i32* %172, i8* %173, %struct.TYPE_15__* %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  br label %190

178:                                              ; preds = %163
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_15__*, i32*)** %180, align 8
  %182 = load i8*, i8** %26, align 8
  %183 = load i32*, i32** %28, align 8
  %184 = load i32*, i32** %33, align 8
  %185 = load i8*, i8** %31, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %187 = load i32*, i32** %25, align 8
  %188 = call i32 %181(i8* %182, i32* null, i32* %183, i32* null, i32* %184, i8* %185, %struct.TYPE_15__* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %190

190:                                              ; preds = %178, %166
  br label %191

191:                                              ; preds = %190, %151
  %192 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %192, i32** %13, align 8
  br label %193

193:                                              ; preds = %191, %128, %109
  %194 = load i32*, i32** %13, align 8
  ret i32* %194
}

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_props(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @inner_dir_diff(i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_17__**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
