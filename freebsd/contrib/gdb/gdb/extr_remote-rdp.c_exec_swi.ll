; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_exec_swi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_exec_swi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8 (%struct.TYPE_22__*, i8*)*, i8 (%struct.TYPE_22__*)*, i8 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*, i8*)*, i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32, i8*, i32)*, i32 (%struct.TYPE_22__*, i32, i8*, i32)*, i64 (%struct.TYPE_22__*, i32, i64, i32)*, i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)* }
%struct.TYPE_21__ = type { i32, i8* }

@callback = common dso_local global %struct.TYPE_22__* null, align 8
@translate_open_mode = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c":tt\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@commandline = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLOCKS_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_21__*)* @exec_swi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_swi(i32 %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %316 [
    i32 128, label %13
    i32 129, label %19
    i32 135, label %43
    i32 144, label %53
    i32 139, label %65
    i32 131, label %74
    i32 143, label %83
    i32 134, label %88
    i32 133, label %99
    i32 137, label %115
    i32 142, label %153
    i32 130, label %164
    i32 136, label %189
    i32 132, label %228
    i32 141, label %247
    i32 138, label %278
    i32 140, label %289
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 12
  %16 = load i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)** %15, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %18 = call i32 %16(%struct.TYPE_22__* %17, i8* %7, i32 1)
  store i32 0, i32* %3, align 4
  br label %317

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 12
  %29 = load i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)** %28, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 %29(%struct.TYPE_22__* %30, i8* %33, i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %20

42:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %317

43:                                               ; preds = %2
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 11
  %46 = load i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)** %45, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %48 = call i32 %46(%struct.TYPE_22__* %47, i8* %7, i32 1)
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 1, i32* %3, align 4
  br label %317

53:                                               ; preds = %2
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i8 (%struct.TYPE_22__*, i8*)*, i8 (%struct.TYPE_22__*, i8*)** %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call signext i8 %56(%struct.TYPE_22__* %57, i8* %60)
  %62 = sext i8 %61 to i32
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 1, i32* %3, align 4
  br label %317

65:                                               ; preds = %2
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i8 (%struct.TYPE_22__*)*, i8 (%struct.TYPE_22__*)** %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %70 = call signext i8 %68(%struct.TYPE_22__* %69)
  %71 = sext i8 %70 to i32
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 1, i32* %3, align 4
  br label %317

74:                                               ; preds = %2
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load i8 (%struct.TYPE_22__*, i32*)*, i8 (%struct.TYPE_22__*, i32*)** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %79 = call signext i8 %77(%struct.TYPE_22__* %78, i32* null)
  %80 = sext i8 %79 to i32
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 1, i32* %3, align 4
  br label %317

83:                                               ; preds = %2
  %84 = call i32 (...) @clock()
  %85 = sdiv i32 %84, 10000
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 1, i32* %3, align 4
  br label %317

88:                                               ; preds = %2
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 %91(%struct.TYPE_22__* %92, i8* %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 1, i32* %3, align 4
  br label %317

99:                                               ; preds = %2
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 4
  %102 = load i32 (%struct.TYPE_22__*, i8*, i8*)*, i32 (%struct.TYPE_22__*, i8*, i8*)** %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 %102(%struct.TYPE_22__* %103, i8* %107, i8* %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 1, i32* %3, align 4
  br label %317

115:                                              ; preds = %2
  %116 = load i32*, i32** @translate_open_mode, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %6, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %115
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @O_RDONLY, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  br label %139

136:                                              ; preds = %129
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  br label %152

140:                                              ; preds = %115
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 5
  %143 = load i32 (%struct.TYPE_22__*, i8*, i32)*, i32 (%struct.TYPE_22__*, i8*, i32)** %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 %143(%struct.TYPE_22__* %144, i8* %147, i32 %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %140, %139
  store i32 1, i32* %3, align 4
  br label %317

153:                                              ; preds = %2
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 6
  %156 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %155, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %156(%struct.TYPE_22__* %157, i32 %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  store i32 1, i32* %3, align 4
  br label %317

164:                                              ; preds = %2
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 7
  %171 = load i32 (%struct.TYPE_22__*, i32, i8*, i32)*, i32 (%struct.TYPE_22__*, i32, i8*, i32)** %170, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 %171(%struct.TYPE_22__* %172, i32 %176, i8* %180, i32 %184)
  %186 = sub nsw i32 %168, %185
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  store i32 1, i32* %3, align 4
  br label %317

189:                                              ; preds = %2
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i64 2
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @alloca(i32 %193)
  store i8* %194, i8** %8, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 8
  %197 = load i32 (%struct.TYPE_22__*, i32, i8*, i32)*, i32 (%struct.TYPE_22__*, i32, i8*, i32)** %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i64 2
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 %197(%struct.TYPE_22__* %198, i32 %202, i8* %203, i32 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %189
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @remote_rdp_xfer_inferior_memory(i32 %215, i8* %216, i32 %217, i32 1, i32 0, i32 0)
  br label %219

219:                                              ; preds = %211, %189
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i64 2
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  store i32 1, i32* %3, align 4
  br label %317

228:                                              ; preds = %2
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 9
  %231 = load i64 (%struct.TYPE_22__*, i32, i64, i32)*, i64 (%struct.TYPE_22__*, i32, i64, i32)** %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i64 0
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 1
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = call i64 %231(%struct.TYPE_22__* %232, i32 %236, i64 %241, i32 0)
  %243 = icmp slt i64 %242, 0
  %244 = zext i1 %243 to i32
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  store i32 1, i32* %3, align 4
  br label %317

247:                                              ; preds = %2
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 9
  %250 = load i64 (%struct.TYPE_22__*, i32, i64, i32)*, i64 (%struct.TYPE_22__*, i32, i64, i32)** %249, align 8
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SEEK_CUR, align 4
  %256 = call i64 %250(%struct.TYPE_22__* %251, i32 %254, i64 0, i32 %255)
  store i64 %256, i64* %10, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 9
  %259 = load i64 (%struct.TYPE_22__*, i32, i64, i32)*, i64 (%struct.TYPE_22__*, i32, i64, i32)** %258, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @SEEK_END, align 4
  %265 = call i64 %259(%struct.TYPE_22__* %260, i32 %263, i64 0, i32 %264)
  %266 = trunc i64 %265 to i32
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 9
  %271 = load i64 (%struct.TYPE_22__*, i32, i64, i32)*, i64 (%struct.TYPE_22__*, i32, i64, i32)** %270, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i64, i64* %10, align 8
  %277 = call i64 %271(%struct.TYPE_22__* %272, i32 %275, i64 %276, i32 0)
  store i32 1, i32* %3, align 4
  br label %317

278:                                              ; preds = %2
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 10
  %281 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %280, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** @callback, align 8
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 %281(%struct.TYPE_22__* %282, i32 %285)
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  store i32 1, i32* %3, align 4
  br label %317

289:                                              ; preds = %2
  %290 = load i8*, i8** @commandline, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %309

292:                                              ; preds = %289
  %293 = load i8*, i8** @commandline, align 8
  %294 = call i32 @strlen(i8* %293)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = icmp sgt i32 %295, 255
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  store i32 255, i32* %11, align 4
  %298 = load i8*, i8** @commandline, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 255
  store i8 0, i8* %299, align 1
  br label %300

300:                                              ; preds = %297, %292
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i8*, i8** @commandline, align 8
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  %308 = call i32 @remote_rdp_xfer_inferior_memory(i32 %304, i8* %305, i32 %307, i32 1, i32 0, i32 0)
  br label %315

309:                                              ; preds = %289
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @remote_rdp_xfer_inferior_memory(i32 %313, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0)
  br label %315

315:                                              ; preds = %309, %300
  store i32 1, i32* %3, align 4
  br label %317

316:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %315, %278, %247, %228, %219, %164, %153, %152, %99, %88, %83, %74, %65, %53, %43, %42, %13
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @clock(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_rdp_xfer_inferior_memory(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
