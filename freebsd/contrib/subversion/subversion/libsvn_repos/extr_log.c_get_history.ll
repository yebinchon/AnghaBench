; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_get_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_get_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_info = type { i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.path_info*, i32*, i32, i32 (i32*, i32*, i32, i8*, i32*)*, i8*, i32, i32*, i32*)* @get_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_history(%struct.path_info* %0, i32* %1, i32 %2, i32 (i32*, i32*, i32, i8*, i32*)* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.path_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32*, i32*, i32, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.path_info* %0, %struct.path_info** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 (i32*, i32*, i32, i8*, i32*)* %3, i32 (i32*, i32*, i32, i8*, i32*)** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %24 = load %struct.path_info*, %struct.path_info** %10, align 8
  %25 = getelementptr inbounds %struct.path_info, %struct.path_info* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %8
  %29 = load %struct.path_info*, %struct.path_info** %10, align 8
  %30 = getelementptr inbounds %struct.path_info, %struct.path_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %20, align 8
  %32 = load %struct.path_info*, %struct.path_info** %10, align 8
  %33 = getelementptr inbounds %struct.path_info, %struct.path_info* %32, i32 0, i32 2
  %34 = load %struct.path_info*, %struct.path_info** %10, align 8
  %35 = getelementptr inbounds %struct.path_info, %struct.path_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %20, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @svn_fs_history_prev2(i32** %33, i32* %36, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.path_info*, %struct.path_info** %10, align 8
  %46 = getelementptr inbounds %struct.path_info, %struct.path_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %19, align 8
  br label %96

48:                                               ; preds = %8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32* @svn_pool_create(i32* %49)
  store i32* %50, i32** %20, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.path_info*, %struct.path_info** %10, align 8
  %53 = getelementptr inbounds %struct.path_info, %struct.path_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @svn_fs_revision_root(i32** %18, i32* %51, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %18, align 8
  %59 = load %struct.path_info*, %struct.path_info** %10, align 8
  %60 = getelementptr inbounds %struct.path_info, %struct.path_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %20, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @svn_fs_node_history2(i32** %19, i32* %58, i32 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %20, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @svn_fs_history_prev2(i32** %19, i32* %68, i32 %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.path_info*, %struct.path_info** %10, align 8
  %78 = getelementptr inbounds %struct.path_info, %struct.path_info* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %48
  %82 = load i64, i64* @FALSE, align 8
  %83 = load %struct.path_info*, %struct.path_info** %10, align 8
  %84 = getelementptr inbounds %struct.path_info, %struct.path_info* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  br label %95

85:                                               ; preds = %48
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @svn_fs_history_prev2(i32** %19, i32* %86, i32 %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %85, %81
  br label %96

96:                                               ; preds = %95, %28
  %97 = load i32*, i32** %19, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %96
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @svn_pool_destroy(i32* %100)
  %102 = load %struct.path_info*, %struct.path_info** %10, align 8
  %103 = getelementptr inbounds %struct.path_info, %struct.path_info* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.path_info*, %struct.path_info** %10, align 8
  %108 = getelementptr inbounds %struct.path_info, %struct.path_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @svn_pool_destroy(i32* %109)
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.path_info*, %struct.path_info** %10, align 8
  %114 = getelementptr inbounds %struct.path_info, %struct.path_info* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %115, i32** %9, align 8
  br label %203

116:                                              ; preds = %96
  %117 = load %struct.path_info*, %struct.path_info** %10, align 8
  %118 = getelementptr inbounds %struct.path_info, %struct.path_info* %117, i32 0, i32 5
  %119 = load i32*, i32** %19, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = call i32 @svn_fs_history_location(i8** %21, i32* %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.path_info*, %struct.path_info** %10, align 8
  %124 = getelementptr inbounds %struct.path_info, %struct.path_info* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = call i32 @svn_stringbuf_set(%struct.TYPE_2__* %125, i8* %126)
  %128 = load %struct.path_info*, %struct.path_info** %10, align 8
  %129 = getelementptr inbounds %struct.path_info, %struct.path_info* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %116
  %134 = load i32*, i32** %20, align 8
  %135 = call i32 @svn_pool_destroy(i32* %134)
  %136 = load %struct.path_info*, %struct.path_info** %10, align 8
  %137 = getelementptr inbounds %struct.path_info, %struct.path_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.path_info*, %struct.path_info** %10, align 8
  %142 = getelementptr inbounds %struct.path_info, %struct.path_info* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @svn_pool_destroy(i32* %143)
  br label %145

145:                                              ; preds = %140, %133
  %146 = load i8*, i8** @TRUE, align 8
  %147 = load %struct.path_info*, %struct.path_info** %10, align 8
  %148 = getelementptr inbounds %struct.path_info, %struct.path_info* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %149, i32** %9, align 8
  br label %203

150:                                              ; preds = %116
  %151 = load i32 (i32*, i32*, i32, i8*, i32*)*, i32 (i32*, i32*, i32, i8*, i32*)** %13, align 8
  %152 = icmp ne i32 (i32*, i32*, i32, i8*, i32*)* %151, null
  br i1 %152, label %153, label %179

153:                                              ; preds = %150
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.path_info*, %struct.path_info** %10, align 8
  %156 = getelementptr inbounds %struct.path_info, %struct.path_info* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 @svn_fs_revision_root(i32** %18, i32* %154, i32 %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i32 (i32*, i32*, i32, i8*, i32*)*, i32 (i32*, i32*, i32, i8*, i32*)** %13, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = load %struct.path_info*, %struct.path_info** %10, align 8
  %164 = getelementptr inbounds %struct.path_info, %struct.path_info* %163, i32 0, i32 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 %161(i32* %22, i32* %162, i32 %167, i8* %168, i32* %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %153
  %175 = load i8*, i8** @TRUE, align 8
  %176 = load %struct.path_info*, %struct.path_info** %10, align 8
  %177 = getelementptr inbounds %struct.path_info, %struct.path_info* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %174, %153
  br label %179

179:                                              ; preds = %178, %150
  %180 = load %struct.path_info*, %struct.path_info** %10, align 8
  %181 = getelementptr inbounds %struct.path_info, %struct.path_info* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load i32*, i32** %20, align 8
  %186 = call i32 @svn_pool_destroy(i32* %185)
  br label %201

187:                                              ; preds = %179
  %188 = load %struct.path_info*, %struct.path_info** %10, align 8
  %189 = getelementptr inbounds %struct.path_info, %struct.path_info* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %23, align 8
  %191 = load %struct.path_info*, %struct.path_info** %10, align 8
  %192 = getelementptr inbounds %struct.path_info, %struct.path_info* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.path_info*, %struct.path_info** %10, align 8
  %195 = getelementptr inbounds %struct.path_info, %struct.path_info* %194, i32 0, i32 1
  store i32* %193, i32** %195, align 8
  %196 = load i32*, i32** %23, align 8
  %197 = call i32 @svn_pool_clear(i32* %196)
  %198 = load i32*, i32** %23, align 8
  %199 = load %struct.path_info*, %struct.path_info** %10, align 8
  %200 = getelementptr inbounds %struct.path_info, %struct.path_info* %199, i32 0, i32 0
  store i32* %198, i32** %200, align 8
  br label %201

201:                                              ; preds = %187, %184
  %202 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %202, i32** %9, align 8
  br label %203

203:                                              ; preds = %201, %145, %111
  %204 = load i32*, i32** %9, align 8
  ret i32* %204
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_history_prev2(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_node_history2(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_history_location(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
