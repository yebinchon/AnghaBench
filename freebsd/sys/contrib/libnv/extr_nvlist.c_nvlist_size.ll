; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@NV_TYPE_NVLIST = common dso_local global i64 0, align 8
@NV_TYPE_NVLIST_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvlist_size(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = call i32 @NVLIST_ASSERT(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_ASSERT(i32 %17)
  store i64 4, i64* %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = call i32* @nvlist_first_nvpair(%struct.TYPE_11__* %19)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %172, %123, %59, %1
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %173

24:                                               ; preds = %21
  %25 = call i32 (...) @nvpair_header_size()
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @nvpair_name(i32* %29)
  %31 = call i64 @strlen(i32 %30)
  %32 = add nsw i64 %31, 1
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @nvpair_type(i32* %35)
  %37 = load i64, i64* @NV_TYPE_NVLIST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %24
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %8, align 8
  %42 = call i32 (...) @nvpair_header_size()
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call %struct.TYPE_11__* @nvpair_get_nvlist(i32* %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %3, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @PJDLOG_ASSERT(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = call i32* @nvlist_first_nvpair(%struct.TYPE_11__* %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %2, align 8
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %5, align 8
  br label %21

62:                                               ; preds = %39
  br label %133

63:                                               ; preds = %24
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @nvpair_type(i32* %64)
  %66 = load i64, i64* @NV_TYPE_NVLIST_ARRAY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call %struct.TYPE_11__** @nvpair_get_nvlist_array(i32* %69, i64* %9)
  store %struct.TYPE_11__** %70, %struct.TYPE_11__*** %4, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @PJDLOG_ASSERT(i32 %73)
  %75 = call i32 (...) @nvpair_header_size()
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %9, align 8
  %79 = mul i64 %77, %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = mul i64 4, %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %117, %68
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %9, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %86
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %92, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @PJDLOG_ASSERT(i32 %100)
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %102, i64 %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = call i32* @nvlist_first_nvpair(%struct.TYPE_11__* %106)
  store i32* %107, i32** %6, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %91
  %111 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %111, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %3, align 8
  br label %120

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %86

120:                                              ; preds = %110, %86
  %121 = load i32*, i32** %6, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %6, align 8
  store i32* %124, i32** %5, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %2, align 8
  br label %21

126:                                              ; preds = %120
  br label %132

127:                                              ; preds = %63
  %128 = load i32*, i32** %5, align 8
  %129 = call i64 @nvpair_size(i32* %128)
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %8, align 8
  br label %132

132:                                              ; preds = %127, %126
  br label %133

133:                                              ; preds = %132, %62
  br label %134

134:                                              ; preds = %171, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32* @nvlist_next_nvpair(%struct.TYPE_11__* %135, i32* %136)
  store i32* %137, i32** %5, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %172

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %160, %139
  store i8* null, i8** %7, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = call %struct.TYPE_11__* @nvlist_get_pararr(%struct.TYPE_11__* %141, i8** %7)
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %2, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %144 = icmp eq %struct.TYPE_11__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %174

146:                                              ; preds = %140
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = call i64 @nvlist_in_array(%struct.TYPE_11__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i8*, i8** %7, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = call i32* @nvlist_first_nvpair(%struct.TYPE_11__* %154)
  store i32* %155, i32** %5, align 8
  br label %159

156:                                              ; preds = %150, %146
  %157 = load i8*, i8** %7, align 8
  %158 = bitcast i8* %157 to i32*
  store i32* %158, i32** %5, align 8
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159
  %161 = load i32*, i32** %5, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %140, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %165 = call i64 @nvlist_in_array(%struct.TYPE_11__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %7, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %172

171:                                              ; preds = %167, %163
  br label %134

172:                                              ; preds = %170, %134
  br label %21

173:                                              ; preds = %21
  br label %174

174:                                              ; preds = %173, %145
  %175 = load i64, i64* %8, align 8
  ret i64 %175
}

declare dso_local i32 @NVLIST_ASSERT(%struct.TYPE_11__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32* @nvlist_first_nvpair(%struct.TYPE_11__*) #1

declare dso_local i32 @nvpair_header_size(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local %struct.TYPE_11__* @nvpair_get_nvlist(i32*) #1

declare dso_local %struct.TYPE_11__** @nvpair_get_nvlist_array(i32*, i64*) #1

declare dso_local i64 @nvpair_size(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_11__* @nvlist_get_pararr(%struct.TYPE_11__*, i8**) #1

declare dso_local i64 @nvlist_in_array(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
