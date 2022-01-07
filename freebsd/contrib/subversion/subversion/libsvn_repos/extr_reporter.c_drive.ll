; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, %struct.TYPE_15__*, i32, i64*, i32, i32, i32*, i32 }
%struct.TYPE_15__ = type { i32 (i8*, i32*)*, i32 (i32, i32, i32*, i8**)*, i32 (i32, i32, i32*)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@SVN_ERR_AUTHZ_ROOT_UNREADABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Not authorized to open root of edit operation\00", align 1
@SVN_ERR_FS_PATH_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Target path '%s' does not exist\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot replace a directory from within\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32*)* @drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @drive(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @svn_fspath__dirname(i8* %26, i32* %27)
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i8* [ %28, %23 ], [ %32, %29 ]
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @check_auth(%struct.TYPE_17__* %35, i32* %12, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @SVN_ERR_AUTHZ_ROOT_UNREADABLE, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %45 = call i32* @svn_error_create(i32 %43, i32* null, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %220

46:                                               ; preds = %33
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i8* @svn_fspath__join(i32 %49, i64* %52, i32* %53)
  store i8* %54, i8** %11, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @get_source_root(%struct.TYPE_17__* %55, i32** %14, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %14, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @fake_dirent(%struct.TYPE_16__** %15, i32* %59, i8* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @fake_dirent(%struct.TYPE_16__** %16, i32* %66, i8* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @SVN_IS_VALID_REVNUM(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %46
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %78, %46
  %85 = phi i1 [ false, %46 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i8* null, i8** %11, align 8
  br label %93

93:                                               ; preds = %92, %89, %84
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %101 = icmp ne %struct.TYPE_16__* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %104 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32* @svn_error_createf(i32 %103, i32* null, i32 %104, i8* %107)
  store i32* %108, i32** %5, align 8
  br label %220

109:                                              ; preds = %99, %93
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %134, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @svn_node_dir, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @svn_node_dir, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124, %118, %115
  %131 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %132 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %133 = call i32* @svn_error_create(i32 %131, i32* null, i32 %132)
  store i32* %133, i32** %5, align 8
  br label %220

134:                                              ; preds = %124, %109
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 %140(i32 %143, i32 %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32 (i32, i32, i32*, i8**)*, i32 (i32, i32, i32*, i8**)** %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 %154(i32 %157, i32 %158, i32* %159, i8** %17)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %187, label %167

167:                                              ; preds = %135
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @delta_dirs(%struct.TYPE_17__* %168, i32 %169, i8* %170, i8* %173, i8* %174, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %177, i32 %180, i32 %183, i32* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  br label %210

187:                                              ; preds = %135
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i8*, i8** %11, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @update_entry(%struct.TYPE_17__* %188, i32 %189, i8* %190, %struct.TYPE_16__* %191, i8* %194, %struct.TYPE_16__* %195, i8* %196, i64* %199, %struct.TYPE_18__* %200, i32 %203, i32 %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %210

210:                                              ; preds = %187, %167
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %214, align 8
  %216 = load i8*, i8** %17, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 %215(i8* %216, i32* %217)
  %219 = call i32* @svn_error_trace(i32 %218)
  store i32* %219, i32** %5, align 8
  br label %220

220:                                              ; preds = %210, %130, %102, %42
  %221 = load i32*, i32** %5, align 8
  ret i32* %221
}

declare dso_local i8* @svn_fspath__dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_auth(%struct.TYPE_17__*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_fspath__join(i32, i64*, i32*) #1

declare dso_local i32 @get_source_root(%struct.TYPE_17__*, i32**, i32) #1

declare dso_local i32 @fake_dirent(%struct.TYPE_16__**, i32*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @delta_dirs(%struct.TYPE_17__*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @update_entry(%struct.TYPE_17__*, i32, i8*, %struct.TYPE_16__*, i8*, %struct.TYPE_16__*, i8*, i64*, %struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
