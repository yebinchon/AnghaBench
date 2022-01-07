; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i64 }

@svn_node_dir = common dso_local global i64 0, align 8
@dir_rep = common dso_local global i32 0, align 4
@file_rep = common dso_local global i32 0, align 4
@dir_property_rep = common dso_local global i32 0, align 4
@file_property_rep = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i32*)* @read_noderev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_noderev(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %12, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_17__* %15, i32* %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_fs_fs__read_noderev(%struct.TYPE_21__** %13, i32* %18, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_fs_fs__fixup_expanded_size(i32 %25, i64 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @svn_fs_fs__fixup_expanded_size(i32 %34, i64 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %5
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @parse_representation(%struct.TYPE_19__** %11, %struct.TYPE_20__* %46, i64 %49, %struct.TYPE_18__* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %45
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @svn_node_dir, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @dir_rep, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @file_rep, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %45
  br label %75

75:                                               ; preds = %74, %5
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @parse_representation(%struct.TYPE_19__** %12, %struct.TYPE_20__* %81, i64 %84, %struct.TYPE_18__* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %109

95:                                               ; preds = %80
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @svn_node_dir, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @dir_property_rep, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @file_property_rep, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %80
  br label %110

110:                                              ; preds = %109, %75
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = icmp ne %struct.TYPE_19__* %111, null
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %144

118:                                              ; preds = %113
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @add_change(i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136, i32 %142)
  br label %144

144:                                              ; preds = %118, %113, %110
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %146 = icmp ne %struct.TYPE_19__* %145, null
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %178

152:                                              ; preds = %147
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @add_change(i32 %155, i32 %158, i32 %161, i32 %164, i32 %167, i32 %170, i32 %176)
  br label %178

178:                                              ; preds = %152, %147, %144
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @svn_node_dir, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %178
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %186 = icmp ne %struct.TYPE_19__* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %206

192:                                              ; preds = %187
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @svn_fs_fs__use_log_addressing(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %192
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = call i32 @parse_dir(%struct.TYPE_20__* %199, %struct.TYPE_21__* %200, %struct.TYPE_18__* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  br label %206

206:                                              ; preds = %198, %192, %187, %184, %178
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @svn_node_dir, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %206
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %240

226:                                              ; preds = %206
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %226, %212
  %241 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %241
}

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_noderev(%struct.TYPE_21__**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__fixup_expanded_size(i32, i64, i32*) #1

declare dso_local i32 @parse_representation(%struct.TYPE_19__**, %struct.TYPE_20__*, i64, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @add_change(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_fs_fs__use_log_addressing(i32) #1

declare dso_local i32 @parse_dir(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
