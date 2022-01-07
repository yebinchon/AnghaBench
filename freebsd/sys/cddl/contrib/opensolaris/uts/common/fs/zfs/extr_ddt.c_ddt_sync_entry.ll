; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_sync_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_sync_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_26__*, i32**, i32, i32 }
%struct.TYPE_26__ = type { i64, i64 }

@DDT_TYPE_CURRENT = common dso_local global i32 0, align 4
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@DDT_PHYS_DITTO = common dso_local global i32 0, align 4
@DDT_CLASS_DITTO = common dso_local global i32 0, align 4
@DDT_CLASS_DUPLICATE = common dso_local global i32 0, align 4
@DDT_CLASS_UNIQUE = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_27__*, i32*, i32)* @ddt_sync_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddt_sync_entry(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %9, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %10, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 6
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @DDT_TYPE_CURRENT, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %113, %4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %46
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 4
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %50
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  br label %113

78:                                               ; preds = %50
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %85 = call i64 @ddt_ditto_copies_needed(%struct.TYPE_25__* %83, %struct.TYPE_27__* %84, i32* null)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @ddt_phys_free(%struct.TYPE_25__* %88, i32* %89, %struct.TYPE_26__* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %113

94:                                               ; preds = %78
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @ddt_phys_free(%struct.TYPE_25__* %100, i32* %101, %struct.TYPE_26__* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %105, %93, %71
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 1
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %10, align 8
  br label %46

118:                                              ; preds = %46
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* @DDT_CLASS_DITTO, align 4
  store i32 %129, i32* %15, align 4
  br label %138

130:                                              ; preds = %118
  %131 = load i32, i32* %16, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @DDT_CLASS_DUPLICATE, align 4
  store i32 %134, i32* %15, align 4
  br label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @DDT_CLASS_UNIQUE, align 4
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %137, %128
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @DDT_TYPES, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %16, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %150, %146, %142
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i64 @ddt_object_remove(%struct.TYPE_25__* %154, i32 %155, i32 %156, %struct.TYPE_27__* %157, i32* %158)
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @VERIFY(i32 %161)
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = call i64 @ddt_object_lookup(%struct.TYPE_25__* %163, i32 %164, i32 %165, %struct.TYPE_27__* %166)
  %168 = load i64, i64* @ENOENT, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @ASSERT(i32 %170)
  br label %172

172:                                              ; preds = %153, %150, %138
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %220

175:                                              ; preds = %172
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %184 = call i32 @ddt_stat_update(%struct.TYPE_25__* %182, %struct.TYPE_27__* %183, i32 0)
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @ddt_object_exists(%struct.TYPE_25__* %185, i32 %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %175
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @ddt_object_create(%struct.TYPE_25__* %191, i32 %192, i32 %193, i32* %194)
  br label %196

196:                                              ; preds = %190, %175
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = call i64 @ddt_object_update(%struct.TYPE_25__* %197, i32 %198, i32 %199, %struct.TYPE_27__* %200, i32* %201)
  %203 = icmp eq i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @VERIFY(i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %196
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @dsl_scan_ddt_entry(i32 %212, i32 %215, %struct.TYPE_27__* %216, i32* %217)
  br label %219

219:                                              ; preds = %209, %196
  br label %220

220:                                              ; preds = %219, %172
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @ddt_ditto_copies_needed(%struct.TYPE_25__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @ddt_phys_free(%struct.TYPE_25__*, i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ddt_object_remove(%struct.TYPE_25__*, i32, i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i64 @ddt_object_lookup(%struct.TYPE_25__*, i32, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @ddt_stat_update(%struct.TYPE_25__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @ddt_object_exists(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ddt_object_create(%struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i64 @ddt_object_update(%struct.TYPE_25__*, i32, i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @dsl_scan_ddt_entry(i32, i32, %struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
