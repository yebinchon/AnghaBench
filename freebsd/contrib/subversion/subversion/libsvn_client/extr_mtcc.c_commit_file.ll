; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_commit_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_commit_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*, i64*, i8**)* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 (i32, %struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { i8*, i32 }

@svn_checksum_md5 = common dso_local global i64 0, align 8
@svn_wc_notify_commit_postfix_txdelta = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_delta_noop_window_handler = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, %struct.TYPE_19__*, i8*, i8*, i8*, %struct.TYPE_17__*, i32*)* @commit_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_file(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_17__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %13, align 8
  store i32* %6, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %16, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @commit_properties(%struct.TYPE_16__* %26, %struct.TYPE_19__* %27, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %160

36:                                               ; preds = %7
  store i8* null, i8** %17, align 8
  %37 = load i32*, i32** %14, align 8
  store i32* %37, i32** %18, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %21, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_checksum_md5, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i8* @svn_checksum_to_cstring(%struct.TYPE_18__* %56, i32* %57)
  store i8* %58, i8** %17, align 8
  br label %59

59:                                               ; preds = %53, %45, %36
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32 (i8*, i8*, i32*, i64*, i8**)*, i32 (i8*, i8*, i32*, i64*, i8**)** %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 %62(i8* %63, i8* %64, i32* %65, i64* %19, i8** %20)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %69, align 8
  %71 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %59
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @svn_path_url_add_component2(i8* %73, i8* %74, i32* %75)
  %77 = load i32, i32* @svn_wc_notify_commit_postfix_txdelta, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = call %struct.TYPE_15__* @svn_wc_create_notify_url(i32 %76, i32 %77, i32* %78)
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %22, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @svn_node_file, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 %88(i32 %91, %struct.TYPE_15__* %92, i32* %93)
  br label %95

95:                                               ; preds = %72, %59
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* @svn_delta_noop_window_handler, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %145

99:                                               ; preds = %95
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %101 = icmp ne %struct.TYPE_18__* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @svn_checksum_md5, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102, %99
  %109 = load i32*, i32** %21, align 8
  %110 = load i64, i64* @svn_checksum_md5, align 8
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = call i32* @svn_stream_checksummed2(i32* %109, %struct.TYPE_18__** %16, i32* null, i64 %110, i32 %111, i32* %112)
  store i32* %113, i32** %21, align 8
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load i32*, i32** %21, align 8
  %121 = load i64, i64* %19, align 8
  %122 = load i8*, i8** %20, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @svn_txdelta_send_stream(i32* %120, i64 %121, i8* %122, i32* null, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %144

126:                                              ; preds = %114
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = load i64, i64* %19, align 8
  %132 = load i8*, i8** %20, align 8
  %133 = load i64, i64* @svn_checksum_md5, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = call i32 @svn_txdelta_run(i32* %129, i32* %130, i64 %131, i8* %132, i64 %133, i32* null, i32 %136, i32 %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  br label %144

144:                                              ; preds = %126, %119
  br label %145

145:                                              ; preds = %144, %95
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @svn_stream_close(i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @svn_stream_close(i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  br label %159

159:                                              ; preds = %153, %145
  br label %160

160:                                              ; preds = %159, %7
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %162 = icmp ne %struct.TYPE_18__* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @svn_checksum_md5, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = call i8* @svn_checksum_to_cstring(%struct.TYPE_18__* %170, i32* %171)
  store i8* %172, i8** %15, align 8
  br label %173

173:                                              ; preds = %169, %163, %160
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %175, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 %176(i8* %177, i8* %178, i32* %179)
  %181 = call i32* @svn_error_trace(i32 %180)
  ret i32* %181
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @commit_properties(%struct.TYPE_16__*, %struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_wc_create_notify_url(i32, i32, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, %struct.TYPE_18__**, i32*, i64, i32, i32*) #1

declare dso_local i32 @svn_txdelta_send_stream(i32*, i64, i8*, i32*, i32*) #1

declare dso_local i32 @svn_txdelta_run(i32*, i32*, i64, i8*, i64, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
