; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_print_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_print_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.ui_file = type { i32 }
%struct.type = type { i32 }
%struct.print_symbol_args = type { i32, %struct.ui_file*, %struct.symbol* }
%struct.TYPE_3__ = type { i32 }

@LABEL_DOMAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"label %s at \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" section %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STRUCT_DOMAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s %s = \00", align 1
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"const %ld (0x%lx)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"const %u hex bytes:\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"static at \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c" section %s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"extern global at *(\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"),\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"register %ld\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"arg at offset 0x%lx\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"arg at offset 0x%lx from fp\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"reference arg at 0x%lx\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"parameter register %ld\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"address parameter register %ld\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"local at offset 0x%lx\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"local at 0x%lx from register %d\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"arg at 0x%lx from register %d\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"label at \00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"block object \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"computed at runtime\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"unresolved\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"optimized out\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"botched symbol class %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @print_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_symbol(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.print_symbol_args*
  %11 = getelementptr inbounds %struct.print_symbol_args, %struct.print_symbol_args* %10, i32 0, i32 2
  %12 = load %struct.symbol*, %struct.symbol** %11, align 8
  store %struct.symbol* %12, %struct.symbol** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.print_symbol_args*
  %15 = getelementptr inbounds %struct.print_symbol_args, %struct.print_symbol_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.print_symbol_args*
  %19 = getelementptr inbounds %struct.print_symbol_args, %struct.print_symbol_args* %18, i32 0, i32 1
  %20 = load %struct.ui_file*, %struct.ui_file** %19, align 8
  store %struct.ui_file* %20, %struct.ui_file** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %23 = call i32 @print_spaces(i32 %21, %struct.ui_file* %22)
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %24)
  %26 = load i64, i64* @LABEL_DOMAIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %1
  %29 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %30 = load %struct.symbol*, %struct.symbol** %4, align 8
  %31 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %30)
  %32 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.symbol*, %struct.symbol** %4, align 8
  %34 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %33)
  %35 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %36 = call i32 @print_address_numeric(i32 %34, i32 1, %struct.ui_file* %35)
  %37 = load %struct.symbol*, %struct.symbol** %4, align 8
  %38 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %37)
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %42 = load %struct.symbol*, %struct.symbol** %4, align 8
  %43 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.symbol*, %struct.symbol** %4, align 8
  %47 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %46)
  %48 = call i32 @bfd_section_name(i32 %45, %struct.TYPE_3__* %47)
  %49 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %28
  %51 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %40
  store i32 1, i32* %2, align 4
  br label %321

54:                                               ; preds = %1
  %55 = load %struct.symbol*, %struct.symbol** %4, align 8
  %56 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %55)
  %57 = load i64, i64* @STRUCT_DOMAIN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = load %struct.symbol*, %struct.symbol** %4, align 8
  %61 = call i64 @SYMBOL_TYPE(%struct.symbol* %60)
  %62 = call i64 @TYPE_TAG_NAME(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.symbol*, %struct.symbol** %4, align 8
  %66 = call i64 @SYMBOL_TYPE(%struct.symbol* %65)
  %67 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @LA_PRINT_TYPE(i64 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %67, i32 1, i32 %68)
  br label %96

70:                                               ; preds = %59
  %71 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %72 = load %struct.symbol*, %struct.symbol** %4, align 8
  %73 = call i64 @SYMBOL_TYPE(%struct.symbol* %72)
  %74 = call i64 @TYPE_CODE(i64 %73)
  %75 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %86

78:                                               ; preds = %70
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i64 @SYMBOL_TYPE(%struct.symbol* %79)
  %81 = call i64 @TYPE_CODE(i64 %80)
  %82 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  br label %86

86:                                               ; preds = %78, %77
  %87 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %77 ], [ %85, %78 ]
  %88 = load %struct.symbol*, %struct.symbol** %4, align 8
  %89 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %88)
  %90 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %87, i32 %89)
  %91 = load %struct.symbol*, %struct.symbol** %4, align 8
  %92 = call i64 @SYMBOL_TYPE(%struct.symbol* %91)
  %93 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @LA_PRINT_TYPE(i64 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %93, i32 1, i32 %94)
  br label %96

96:                                               ; preds = %86, %64
  %97 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %98 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %318

99:                                               ; preds = %54
  %100 = load %struct.symbol*, %struct.symbol** %4, align 8
  %101 = call i32 @SYMBOL_CLASS(%struct.symbol* %100)
  %102 = icmp eq i32 %101, 129
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %105 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %99
  %107 = load %struct.symbol*, %struct.symbol** %4, align 8
  %108 = call i64 @SYMBOL_TYPE(%struct.symbol* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.symbol*, %struct.symbol** %4, align 8
  %112 = call i64 @SYMBOL_TYPE(%struct.symbol* %111)
  %113 = load %struct.symbol*, %struct.symbol** %4, align 8
  %114 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %113)
  %115 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %116 = load %struct.symbol*, %struct.symbol** %4, align 8
  %117 = call i64 @SYMBOL_TYPE(%struct.symbol* %116)
  %118 = call i64 @TYPE_CODE(i64 %117)
  %119 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %120 = icmp ne i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @LA_PRINT_TYPE(i64 %112, i8* %114, %struct.ui_file* %115, i32 %121, i32 %122)
  %124 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %125 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %131

126:                                              ; preds = %106
  %127 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %128 = load %struct.symbol*, %struct.symbol** %4, align 8
  %129 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %128)
  %130 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %126, %110
  %132 = load %struct.symbol*, %struct.symbol** %4, align 8
  %133 = call i32 @SYMBOL_CLASS(%struct.symbol* %132)
  switch i32 %133, label %312 [
    i32 141, label %134
    i32 140, label %141
    i32 130, label %167
    i32 139, label %188
    i32 133, label %197
    i32 147, label %202
    i32 136, label %207
    i32 134, label %212
    i32 132, label %217
    i32 131, label %222
    i32 137, label %227
    i32 146, label %232
    i32 145, label %239
    i32 129, label %246
    i32 138, label %247
    i32 144, label %268
    i32 143, label %303
    i32 142, label %303
    i32 128, label %306
    i32 135, label %309
  ]

134:                                              ; preds = %131
  %135 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %136 = load %struct.symbol*, %struct.symbol** %4, align 8
  %137 = call i32 @SYMBOL_VALUE(%struct.symbol* %136)
  %138 = load %struct.symbol*, %struct.symbol** %4, align 8
  %139 = call i32 @SYMBOL_VALUE(%struct.symbol* %138)
  %140 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %137, i32 %139)
  br label %317

141:                                              ; preds = %131
  %142 = load %struct.symbol*, %struct.symbol** %4, align 8
  %143 = call i64 @SYMBOL_TYPE(%struct.symbol* %142)
  %144 = call %struct.type* @check_typedef(i64 %143)
  store %struct.type* %144, %struct.type** %8, align 8
  %145 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %146 = load %struct.type*, %struct.type** %8, align 8
  %147 = call i32 @TYPE_LENGTH(%struct.type* %146)
  %148 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %147)
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %163, %141
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.type*, %struct.type** %8, align 8
  %152 = call i32 @TYPE_LENGTH(%struct.type* %151)
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %156 = load %struct.symbol*, %struct.symbol** %4, align 8
  %157 = call i32* @SYMBOL_VALUE_BYTES(%struct.symbol* %156)
  %158 = load i32, i32* %7, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %7, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %149

166:                                              ; preds = %149
  br label %317

167:                                              ; preds = %131
  %168 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %169 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %170 = load %struct.symbol*, %struct.symbol** %4, align 8
  %171 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %170)
  %172 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %173 = call i32 @print_address_numeric(i32 %171, i32 1, %struct.ui_file* %172)
  %174 = load %struct.symbol*, %struct.symbol** %4, align 8
  %175 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %174)
  %176 = icmp ne %struct.TYPE_3__* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %167
  %178 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %179 = load %struct.symbol*, %struct.symbol** %4, align 8
  %180 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %179)
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.symbol*, %struct.symbol** %4, align 8
  %184 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %183)
  %185 = call i32 @bfd_section_name(i32 %182, %struct.TYPE_3__* %184)
  %186 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %177, %167
  br label %317

188:                                              ; preds = %131
  %189 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %190 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %191 = load %struct.symbol*, %struct.symbol** %4, align 8
  %192 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %191)
  %193 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %194 = call i32 @print_address_numeric(i32 %192, i32 1, %struct.ui_file* %193)
  %195 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %196 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %317

197:                                              ; preds = %131
  %198 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %199 = load %struct.symbol*, %struct.symbol** %4, align 8
  %200 = call i32 @SYMBOL_VALUE(%struct.symbol* %199)
  %201 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %200)
  br label %317

202:                                              ; preds = %131
  %203 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %204 = load %struct.symbol*, %struct.symbol** %4, align 8
  %205 = call i32 @SYMBOL_VALUE(%struct.symbol* %204)
  %206 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %205)
  br label %317

207:                                              ; preds = %131
  %208 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %209 = load %struct.symbol*, %struct.symbol** %4, align 8
  %210 = call i32 @SYMBOL_VALUE(%struct.symbol* %209)
  %211 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %210)
  br label %317

212:                                              ; preds = %131
  %213 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %214 = load %struct.symbol*, %struct.symbol** %4, align 8
  %215 = call i32 @SYMBOL_VALUE(%struct.symbol* %214)
  %216 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %215)
  br label %317

217:                                              ; preds = %131
  %218 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %219 = load %struct.symbol*, %struct.symbol** %4, align 8
  %220 = call i32 @SYMBOL_VALUE(%struct.symbol* %219)
  %221 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %220)
  br label %317

222:                                              ; preds = %131
  %223 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %224 = load %struct.symbol*, %struct.symbol** %4, align 8
  %225 = call i32 @SYMBOL_VALUE(%struct.symbol* %224)
  %226 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 %225)
  br label %317

227:                                              ; preds = %131
  %228 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %229 = load %struct.symbol*, %struct.symbol** %4, align 8
  %230 = call i32 @SYMBOL_VALUE(%struct.symbol* %229)
  %231 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %230)
  br label %317

232:                                              ; preds = %131
  %233 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %234 = load %struct.symbol*, %struct.symbol** %4, align 8
  %235 = call i32 @SYMBOL_VALUE(%struct.symbol* %234)
  %236 = load %struct.symbol*, %struct.symbol** %4, align 8
  %237 = call i32 @SYMBOL_BASEREG(%struct.symbol* %236)
  %238 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %233, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i32 %235, i32 %237)
  br label %317

239:                                              ; preds = %131
  %240 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %241 = load %struct.symbol*, %struct.symbol** %4, align 8
  %242 = call i32 @SYMBOL_VALUE(%struct.symbol* %241)
  %243 = load %struct.symbol*, %struct.symbol** %4, align 8
  %244 = call i32 @SYMBOL_BASEREG(%struct.symbol* %243)
  %245 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 %242, i32 %244)
  br label %317

246:                                              ; preds = %131
  br label %317

247:                                              ; preds = %131
  %248 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %249 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %248, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %250 = load %struct.symbol*, %struct.symbol** %4, align 8
  %251 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %250)
  %252 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %253 = call i32 @print_address_numeric(i32 %251, i32 1, %struct.ui_file* %252)
  %254 = load %struct.symbol*, %struct.symbol** %4, align 8
  %255 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %254)
  %256 = icmp ne %struct.TYPE_3__* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %247
  %258 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %259 = load %struct.symbol*, %struct.symbol** %4, align 8
  %260 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %259)
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.symbol*, %struct.symbol** %4, align 8
  %264 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %263)
  %265 = call i32 @bfd_section_name(i32 %262, %struct.TYPE_3__* %264)
  %266 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %257, %247
  br label %317

268:                                              ; preds = %131
  %269 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %270 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %269, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %271 = load %struct.symbol*, %struct.symbol** %4, align 8
  %272 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %271)
  %273 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %274 = call i32 @gdb_print_host_address(i32 %272, %struct.ui_file* %273)
  %275 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %276 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %277 = load %struct.symbol*, %struct.symbol** %4, align 8
  %278 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %277)
  %279 = call i32 @BLOCK_START(i32 %278)
  %280 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %281 = call i32 @print_address_numeric(i32 %279, i32 1, %struct.ui_file* %280)
  %282 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %283 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %284 = load %struct.symbol*, %struct.symbol** %4, align 8
  %285 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %284)
  %286 = call i32 @BLOCK_END(i32 %285)
  %287 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %288 = call i32 @print_address_numeric(i32 %286, i32 1, %struct.ui_file* %287)
  %289 = load %struct.symbol*, %struct.symbol** %4, align 8
  %290 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %289)
  %291 = icmp ne %struct.TYPE_3__* %290, null
  br i1 %291, label %292, label %302

292:                                              ; preds = %268
  %293 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %294 = load %struct.symbol*, %struct.symbol** %4, align 8
  %295 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %294)
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.symbol*, %struct.symbol** %4, align 8
  %299 = call %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol* %298)
  %300 = call i32 @bfd_section_name(i32 %297, %struct.TYPE_3__* %299)
  %301 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %292, %268
  br label %317

303:                                              ; preds = %131, %131
  %304 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %305 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  br label %317

306:                                              ; preds = %131
  %307 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %308 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  br label %317

309:                                              ; preds = %131
  %310 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %311 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %310, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  br label %317

312:                                              ; preds = %131
  %313 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %314 = load %struct.symbol*, %struct.symbol** %4, align 8
  %315 = call i32 @SYMBOL_CLASS(%struct.symbol* %314)
  %316 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %313, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %312, %309, %306, %303, %302, %267, %246, %239, %232, %227, %222, %217, %212, %207, %202, %197, %188, %187, %166, %134
  br label %318

318:                                              ; preds = %317, %96
  %319 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %320 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %319, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %321

321:                                              ; preds = %318, %53
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local i32 @print_spaces(i32, %struct.ui_file*) #1

declare dso_local i64 @SYMBOL_DOMAIN(%struct.symbol*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local %struct.TYPE_3__* @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local i32 @bfd_section_name(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @TYPE_TAG_NAME(i64) #1

declare dso_local i64 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @LA_PRINT_TYPE(i64, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local i64 @TYPE_CODE(i64) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_VALUE(%struct.symbol*) #1

declare dso_local %struct.type* @check_typedef(i64) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32* @SYMBOL_VALUE_BYTES(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_BASEREG(%struct.symbol*) #1

declare dso_local i32 @gdb_print_host_address(i32, %struct.ui_file*) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @BLOCK_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
