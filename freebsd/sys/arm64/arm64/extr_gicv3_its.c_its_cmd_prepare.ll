; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd = type { i32 }
%struct.its_cmd_desc = type { i32, %struct.TYPE_34__, %struct.TYPE_31__, %struct.TYPE_28__, %struct.TYPE_25__, %struct.TYPE_22__, %struct.TYPE_41__, %struct.TYPE_38__, %struct.TYPE_36__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_39__, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__*, %struct.TYPE_32__*, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32 }

@ITS_TARGET_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"its_cmd_prepare: Invalid command: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.its_cmd*, %struct.its_cmd_desc*)* @its_cmd_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_cmd_prepare(%struct.its_cmd* %0, %struct.its_cmd_desc* %1) #0 {
  %3 = alloca %struct.its_cmd*, align 8
  %4 = alloca %struct.its_cmd_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.its_cmd* %0, %struct.its_cmd** %3, align 8
  store %struct.its_cmd_desc* %1, %struct.its_cmd_desc** %4, align 8
  %8 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @ITS_TARGET_NONE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %232 [
    i32 129, label %13
    i32 128, label %44
    i32 132, label %56
    i32 133, label %104
    i32 130, label %130
    i32 131, label %167
    i32 135, label %198
    i32 134, label %221
  ]

13:                                               ; preds = %2
  %14 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %15 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %21 = call i32 @cmd_format_command(%struct.its_cmd* %20, i32 129)
  %22 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %23 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %24 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cmd_format_id(%struct.its_cmd* %22, i32 %26)
  %28 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %29 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %30 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cmd_format_col(%struct.its_cmd* %28, i32 %34)
  %36 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %37 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %38 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cmd_format_devid(%struct.its_cmd* %36, i32 %42)
  br label %235

44:                                               ; preds = %2
  %45 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %46 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %52 = call i32 @cmd_format_command(%struct.its_cmd* %51, i32 128)
  %53 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @cmd_format_target(%struct.its_cmd* %53, i32 %54)
  br label %235

56:                                               ; preds = %2
  %57 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %58 = call i32 @cmd_format_command(%struct.its_cmd* %57, i32 132)
  %59 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %60 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %61 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_40__*, %struct.TYPE_40__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vtophys(i32 %65)
  %67 = call i32 @cmd_format_itt(%struct.its_cmd* %59, i32 %66)
  %68 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %69 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %56
  %74 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %75 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fls(i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @MAX(i32 1, i32 %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %86

85:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %73
  %87 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @cmd_format_size(%struct.its_cmd* %87, i32 %88)
  %90 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %91 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %92 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cmd_format_devid(%struct.its_cmd* %90, i32 %96)
  %98 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %99 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %100 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cmd_format_valid(%struct.its_cmd* %98, i32 %102)
  br label %235

104:                                              ; preds = %2
  %105 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %106 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %5, align 4
  %111 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %112 = call i32 @cmd_format_command(%struct.its_cmd* %111, i32 133)
  %113 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %114 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %115 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cmd_format_col(%struct.its_cmd* %113, i32 %119)
  %121 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %122 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %123 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @cmd_format_valid(%struct.its_cmd* %121, i32 %125)
  %127 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @cmd_format_target(%struct.its_cmd* %127, i32 %128)
  br label %235

130:                                              ; preds = %2
  %131 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %132 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %5, align 4
  %137 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %138 = call i32 @cmd_format_command(%struct.its_cmd* %137, i32 130)
  %139 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %140 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %141 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cmd_format_devid(%struct.its_cmd* %139, i32 %145)
  %147 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %148 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %149 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cmd_format_id(%struct.its_cmd* %147, i32 %151)
  %153 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %154 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %155 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @cmd_format_pid(%struct.its_cmd* %153, i32 %157)
  %159 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %160 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %161 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @cmd_format_col(%struct.its_cmd* %159, i32 %165)
  br label %235

167:                                              ; preds = %2
  %168 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %169 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %5, align 4
  %174 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %175 = call i32 @cmd_format_command(%struct.its_cmd* %174, i32 131)
  %176 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %177 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %178 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cmd_format_devid(%struct.its_cmd* %176, i32 %182)
  %184 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %185 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %186 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @cmd_format_id(%struct.its_cmd* %184, i32 %188)
  %190 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %191 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %192 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @cmd_format_col(%struct.its_cmd* %190, i32 %196)
  br label %235

198:                                              ; preds = %2
  %199 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %200 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %5, align 4
  %205 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %206 = call i32 @cmd_format_command(%struct.its_cmd* %205, i32 135)
  %207 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %208 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %209 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @cmd_format_devid(%struct.its_cmd* %207, i32 %213)
  %215 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %216 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %217 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @cmd_format_id(%struct.its_cmd* %215, i32 %219)
  br label %235

221:                                              ; preds = %2
  %222 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %223 = call i32 @cmd_format_command(%struct.its_cmd* %222, i32 134)
  %224 = load %struct.its_cmd*, %struct.its_cmd** %3, align 8
  %225 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %4, align 8
  %226 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @cmd_format_col(%struct.its_cmd* %224, i32 %230)
  br label %235

232:                                              ; preds = %2
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %232, %221, %198, %167, %130, %104, %86, %44, %13
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @cmd_format_command(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_id(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_col(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_devid(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_target(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_itt(%struct.its_cmd*, i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @cmd_format_size(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_valid(%struct.its_cmd*, i32) #1

declare dso_local i32 @cmd_format_pid(%struct.its_cmd*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
