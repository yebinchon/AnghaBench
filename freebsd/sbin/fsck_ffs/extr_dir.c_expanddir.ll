; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_expanddir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_expanddir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%union.dinode = type { i32 }
%struct.bufarea = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i8* }

@DIRBLKSIZ = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@di_size = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@di_blocks = common dso_local global i32 0, align 4
@emptydir = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"NO SPACE LEFT IN %s\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c" (EXPANDED)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EXPAND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.dinode*, i8*)* @expanddir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expanddir(%union.dinode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.dinode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufarea*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @DIRBLKSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %union.dinode*, %union.dinode** %4, align 8
  %18 = load i32, i32* @di_size, align 4
  %19 = call i32 @DIP(%union.dinode* %17, i32 %18)
  %20 = call i32 @lblkno(%struct.TYPE_6__* @sblock, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @UFS_NDADDR, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %2
  %26 = load %union.dinode*, %union.dinode** %4, align 8
  %27 = load i32*, i32** @di_db, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DIP(%union.dinode* %26, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load %union.dinode*, %union.dinode** %4, align 8
  %36 = load i32, i32* @di_size, align 4
  %37 = call i32 @DIP(%union.dinode* %35, i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %25, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %245

40:                                               ; preds = %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %42 = call i32 @allocblk(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %245

45:                                               ; preds = %40
  %46 = load %union.dinode*, %union.dinode** %4, align 8
  %47 = load i32*, i32** @di_db, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %union.dinode*, %union.dinode** %4, align 8
  %54 = load i32*, i32** @di_db, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DIP(%union.dinode* %53, i32 %58)
  %60 = call i32 @DIP_SET(%union.dinode* %46, i32 %52, i32 %59)
  %61 = load %union.dinode*, %union.dinode** %4, align 8
  %62 = load i32*, i32** @di_db, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @DIP_SET(%union.dinode* %61, i32 %66, i32 %67)
  %69 = load %union.dinode*, %union.dinode** %4, align 8
  %70 = load i32, i32* @di_size, align 4
  %71 = load %union.dinode*, %union.dinode** %4, align 8
  %72 = load i32, i32* @di_size, align 4
  %73 = call i32 @DIP(%union.dinode* %71, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %76 = add i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @DIP_SET(%union.dinode* %69, i32 %70, i32 %77)
  %79 = load %union.dinode*, %union.dinode** %4, align 8
  %80 = load i32, i32* @di_blocks, align 4
  %81 = load %union.dinode*, %union.dinode** %4, align 8
  %82 = load i32, i32* @di_blocks, align 4
  %83 = call i32 @DIP(%union.dinode* %81, i32 %82)
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %85 = call i32 @btodb(i64 %84)
  %86 = add nsw i32 %83, %85
  %87 = call i32 @DIP_SET(%union.dinode* %79, i32 %80, i32 %86)
  %88 = load %union.dinode*, %union.dinode** %4, align 8
  %89 = load i32*, i32** @di_db, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DIP(%union.dinode* %88, i32 %94)
  %96 = load %union.dinode*, %union.dinode** %4, align 8
  %97 = load i32, i32* @di_size, align 4
  %98 = call i32 @DIP(%union.dinode* %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i64 @sblksize(%struct.TYPE_6__* @sblock, i32 %98, i32 %100)
  %102 = call %struct.bufarea* @getdirblk(i32 %95, i64 %101)
  store %struct.bufarea* %102, %struct.bufarea** %8, align 8
  %103 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %104 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %45
  br label %199

108:                                              ; preds = %45
  %109 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %110 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @DIRBLKSIZ, align 4
  %114 = call i32 @memmove(i8* %16, i8* %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %117 = call %struct.bufarea* @getdirblk(i32 %115, i64 %116)
  store %struct.bufarea* %117, %struct.bufarea** %8, align 8
  %118 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %119 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %199

123:                                              ; preds = %108
  %124 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %125 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @DIRBLKSIZ, align 4
  %129 = call i32 @memmove(i8* %127, i8* %16, i32 %128)
  %130 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %131 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @DIRBLKSIZ, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8* %136, i8** %9, align 8
  br label %137

137:                                              ; preds = %149, %123
  %138 = load i8*, i8** %9, align 8
  %139 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %140 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = icmp ult i8* %138, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %137
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @memmove(i8* %147, i8* @emptydir, i32 1)
  br label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @DIRBLKSIZ, align 4
  %151 = load i8*, i8** %9, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %9, align 8
  br label %137

154:                                              ; preds = %137
  %155 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %156 = call i32 @dirty(%struct.bufarea* %155)
  %157 = load %union.dinode*, %union.dinode** %4, align 8
  %158 = load i32*, i32** @di_db, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @DIP(%union.dinode* %157, i32 %163)
  %165 = load %union.dinode*, %union.dinode** %4, align 8
  %166 = load i32, i32* @di_size, align 4
  %167 = call i32 @DIP(%union.dinode* %165, i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  %170 = call i64 @sblksize(%struct.TYPE_6__* @sblock, i32 %167, i32 %169)
  %171 = call %struct.bufarea* @getdirblk(i32 %164, i64 %170)
  store %struct.bufarea* %171, %struct.bufarea** %8, align 8
  %172 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %173 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %154
  br label %199

177:                                              ; preds = %154
  %178 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %179 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @memmove(i8* %181, i8* @emptydir, i32 1)
  %183 = load i8*, i8** %5, align 8
  %184 = call i32 @pwarn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %183)
  %185 = load i64, i64* @preen, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %194

189:                                              ; preds = %177
  %190 = call i64 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %199

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %187
  %195 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %196 = call i32 @dirty(%struct.bufarea* %195)
  %197 = load %union.dinode*, %union.dinode** %4, align 8
  %198 = call i32 @inodirty(%union.dinode* %197)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %245

199:                                              ; preds = %192, %176, %122, %107
  %200 = load %union.dinode*, %union.dinode** %4, align 8
  %201 = load i32*, i32** @di_db, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %union.dinode*, %union.dinode** %4, align 8
  %207 = load i32*, i32** @di_db, align 8
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @DIP(%union.dinode* %206, i32 %212)
  %214 = call i32 @DIP_SET(%union.dinode* %200, i32 %205, i32 %213)
  %215 = load %union.dinode*, %union.dinode** %4, align 8
  %216 = load i32*, i32** @di_db, align 8
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @DIP_SET(%union.dinode* %215, i32 %221, i32 0)
  %223 = load %union.dinode*, %union.dinode** %4, align 8
  %224 = load i32, i32* @di_size, align 4
  %225 = load %union.dinode*, %union.dinode** %4, align 8
  %226 = load i32, i32* @di_size, align 4
  %227 = call i32 @DIP(%union.dinode* %225, i32 %226)
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %230 = sub i64 %228, %229
  %231 = trunc i64 %230 to i32
  %232 = call i32 @DIP_SET(%union.dinode* %223, i32 %224, i32 %231)
  %233 = load %union.dinode*, %union.dinode** %4, align 8
  %234 = load i32, i32* @di_blocks, align 4
  %235 = load %union.dinode*, %union.dinode** %4, align 8
  %236 = load i32, i32* @di_blocks, align 4
  %237 = call i32 @DIP(%union.dinode* %235, i32 %236)
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 0), align 8
  %239 = call i32 @btodb(i64 %238)
  %240 = sub nsw i32 %237, %239
  %241 = call i32 @DIP_SET(%union.dinode* %233, i32 %234, i32 %240)
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblock, i32 0, i32 1), align 8
  %244 = call i32 @freeblk(i32 %242, i32 %243)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %245

245:                                              ; preds = %199, %194, %44, %39
  %246 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lblkno(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @allocblk(i32) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #2

declare dso_local i32 @btodb(i64) #2

declare dso_local %struct.bufarea* @getdirblk(i32, i64) #2

declare dso_local i64 @sblksize(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @dirty(%struct.bufarea*) #2

declare dso_local i32 @pwarn(i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @reply(i8*) #2

declare dso_local i32 @inodirty(%union.dinode*) #2

declare dso_local i32 @freeblk(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
