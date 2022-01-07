; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { i32, %struct.pt_section_list*, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_section = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_add(%struct.pt_image* %0, %struct.pt_section* %1, %struct.pt_asid* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_image*, align 8
  %8 = alloca %struct.pt_section*, align 8
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_section_list**, align 8
  %13 = alloca %struct.pt_section_list*, align 8
  %14 = alloca %struct.pt_section_list*, align 8
  %15 = alloca %struct.pt_section_list*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.pt_mapped_section*, align 8
  %21 = alloca %struct.pt_asid*, align 8
  %22 = alloca %struct.pt_section_list*, align 8
  %23 = alloca %struct.pt_section*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.pt_image* %0, %struct.pt_image** %7, align 8
  store %struct.pt_section* %1, %struct.pt_section** %8, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load %struct.pt_image*, %struct.pt_image** %7, align 8
  %28 = icmp ne %struct.pt_image* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %31 = icmp ne %struct.pt_section* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %5
  %33 = load i32, i32* @pte_internal, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %189

35:                                               ; preds = %29
  %36 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %37 = call i64 @pt_section_size(%struct.pt_section* %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %16, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %18, align 8
  %42 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %43 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.pt_section_list* @pt_mk_section_list(%struct.pt_section* %42, %struct.pt_asid* %43, i64 %44, i64 0, i64 %45, i32 %46)
  store %struct.pt_section_list* %47, %struct.pt_section_list** %13, align 8
  %48 = load %struct.pt_section_list*, %struct.pt_section_list** %13, align 8
  %49 = icmp ne %struct.pt_section_list* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* @pte_nomem, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %189

53:                                               ; preds = %35
  store %struct.pt_section_list* null, %struct.pt_section_list** %14, align 8
  store i32 0, i32* %19, align 4
  %54 = load %struct.pt_image*, %struct.pt_image** %7, align 8
  %55 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %54, i32 0, i32 0
  store %struct.pt_section_list** %55, %struct.pt_section_list*** %12, align 8
  br label %56

56:                                               ; preds = %164, %92, %76, %53
  %57 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %58 = load %struct.pt_section_list*, %struct.pt_section_list** %57, align 8
  %59 = icmp ne %struct.pt_section_list* %58, null
  br i1 %59, label %60, label %165

60:                                               ; preds = %56
  %61 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %62 = load %struct.pt_section_list*, %struct.pt_section_list** %61, align 8
  store %struct.pt_section_list* %62, %struct.pt_section_list** %22, align 8
  %63 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  %64 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %63, i32 0, i32 2
  store %struct.pt_mapped_section* %64, %struct.pt_mapped_section** %20, align 8
  %65 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %20, align 8
  %66 = call %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section* %65)
  store %struct.pt_asid* %66, %struct.pt_asid** %21, align 8
  %67 = load %struct.pt_asid*, %struct.pt_asid** %21, align 8
  %68 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %69 = call i32 @pt_asid_match(%struct.pt_asid* %67, %struct.pt_asid* %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %165

73:                                               ; preds = %60
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %78 = load %struct.pt_section_list*, %struct.pt_section_list** %77, align 8
  %79 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %78, i32 0, i32 1
  store %struct.pt_section_list** %79, %struct.pt_section_list*** %12, align 8
  br label %56

80:                                               ; preds = %73
  %81 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %20, align 8
  %82 = call i64 @pt_msec_begin(%struct.pt_mapped_section* %81)
  store i64 %82, i64* %24, align 8
  %83 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %20, align 8
  %84 = call i64 @pt_msec_end(%struct.pt_mapped_section* %83)
  store i64 %84, i64* %25, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %24, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %25, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %80
  %93 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %94 = load %struct.pt_section_list*, %struct.pt_section_list** %93, align 8
  %95 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %94, i32 0, i32 1
  store %struct.pt_section_list** %95, %struct.pt_section_list*** %12, align 8
  br label %56

96:                                               ; preds = %88
  %97 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %20, align 8
  %98 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %97)
  store %struct.pt_section* %98, %struct.pt_section** %23, align 8
  %99 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %20, align 8
  %100 = call i64 @pt_msec_offset(%struct.pt_mapped_section* %99)
  store i64 %100, i64* %26, align 8
  %101 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  %102 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %101, i32 0, i32 1
  %103 = load %struct.pt_section_list*, %struct.pt_section_list** %102, align 8
  %104 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  store %struct.pt_section_list* %103, %struct.pt_section_list** %104, align 8
  %105 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %106 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  %107 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %106, i32 0, i32 1
  store %struct.pt_section_list* %105, %struct.pt_section_list** %107, align 8
  %108 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  store %struct.pt_section_list* %108, %struct.pt_section_list** %14, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %96
  %113 = load %struct.pt_section*, %struct.pt_section** %23, align 8
  %114 = load %struct.pt_asid*, %struct.pt_asid** %21, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %26, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %24, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  %121 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.pt_section_list* @pt_mk_section_list(%struct.pt_section* %113, %struct.pt_asid* %114, i64 %115, i64 %116, i64 %119, i32 %122)
  store %struct.pt_section_list* %123, %struct.pt_section_list** %15, align 8
  %124 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %125 = icmp ne %struct.pt_section_list* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %112
  %127 = load i32, i32* @pte_nomem, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %19, align 4
  br label %165

129:                                              ; preds = %112
  %130 = load %struct.pt_section_list*, %struct.pt_section_list** %13, align 8
  %131 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %132 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %131, i32 0, i32 1
  store %struct.pt_section_list* %130, %struct.pt_section_list** %132, align 8
  %133 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  store %struct.pt_section_list* %133, %struct.pt_section_list** %13, align 8
  br label %134

134:                                              ; preds = %129, %96
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %25, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %134
  %139 = load %struct.pt_section*, %struct.pt_section** %23, align 8
  %140 = load %struct.pt_asid*, %struct.pt_asid** %21, align 8
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* %24, align 8
  %145 = sub nsw i64 %143, %144
  %146 = add nsw i64 %142, %145
  %147 = load i64, i64* %25, align 8
  %148 = load i64, i64* %18, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load %struct.pt_section_list*, %struct.pt_section_list** %22, align 8
  %151 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.pt_section_list* @pt_mk_section_list(%struct.pt_section* %139, %struct.pt_asid* %140, i64 %141, i64 %146, i64 %149, i32 %152)
  store %struct.pt_section_list* %153, %struct.pt_section_list** %15, align 8
  %154 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %155 = icmp ne %struct.pt_section_list* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %138
  %157 = load i32, i32* @pte_nomem, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %19, align 4
  br label %165

159:                                              ; preds = %138
  %160 = load %struct.pt_section_list*, %struct.pt_section_list** %13, align 8
  %161 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  %162 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %161, i32 0, i32 1
  store %struct.pt_section_list* %160, %struct.pt_section_list** %162, align 8
  %163 = load %struct.pt_section_list*, %struct.pt_section_list** %15, align 8
  store %struct.pt_section_list* %163, %struct.pt_section_list** %13, align 8
  br label %164

164:                                              ; preds = %159, %134
  br label %56

165:                                              ; preds = %156, %126, %72, %56
  %166 = load i32, i32* %19, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %165
  %169 = load %struct.pt_section_list*, %struct.pt_section_list** %13, align 8
  %170 = call i32 @pt_section_list_free_tail(%struct.pt_section_list* %169)
  br label %171

171:                                              ; preds = %176, %168
  %172 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %173 = load %struct.pt_section_list*, %struct.pt_section_list** %172, align 8
  %174 = icmp ne %struct.pt_section_list* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  %178 = load %struct.pt_section_list*, %struct.pt_section_list** %177, align 8
  %179 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %178, i32 0, i32 1
  store %struct.pt_section_list** %179, %struct.pt_section_list*** %12, align 8
  br label %171

180:                                              ; preds = %171
  %181 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %182 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  store %struct.pt_section_list* %181, %struct.pt_section_list** %182, align 8
  %183 = load i32, i32* %19, align 4
  store i32 %183, i32* %6, align 4
  br label %189

184:                                              ; preds = %165
  %185 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %186 = call i32 @pt_section_list_free_tail(%struct.pt_section_list* %185)
  %187 = load %struct.pt_section_list*, %struct.pt_section_list** %13, align 8
  %188 = load %struct.pt_section_list**, %struct.pt_section_list*** %12, align 8
  store %struct.pt_section_list* %187, %struct.pt_section_list** %188, align 8
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %184, %180, %50, %32
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i64 @pt_section_size(%struct.pt_section*) #1

declare dso_local %struct.pt_section_list* @pt_mk_section_list(%struct.pt_section*, %struct.pt_asid*, i64, i64, i64, i32) #1

declare dso_local %struct.pt_asid* @pt_msec_asid(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local i64 @pt_msec_begin(%struct.pt_mapped_section*) #1

declare dso_local i64 @pt_msec_end(%struct.pt_mapped_section*) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i64 @pt_msec_offset(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_list_free_tail(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
