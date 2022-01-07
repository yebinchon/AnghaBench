; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_mapfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_mapfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%union.dinode = type { i32 }
%struct.cg = type { i32 }

@sblock = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"mapfiles: cannot allocate memory.\0A\00", align 1
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"mapfiles: cg %d: bad magic number\0A\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Skipping inode %ju >= maxino %ju\0A\00", align 1
@usedinomap = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@dumpdirmap = common dso_local global i32 0, align 4
@dumpinomap = common dso_local global i32 0, align 4
@IFREG = common dso_local global i32 0, align 4
@IFLNK = common dso_local global i32 0, align 4
@nonodump = common dso_local global i32 0, align 4
@di_flags = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mapfiles(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.dinode*, align 8
  %11 = alloca %struct.cg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cg* @malloc(i32 %16)
  store %struct.cg* %17, %struct.cg** %11, align 8
  %18 = icmp eq %struct.cg* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %215, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %218

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cgtod(%struct.TYPE_4__* %35, i32 %36)
  %38 = call i32 @fsbtodb(%struct.TYPE_4__* %34, i32 %37)
  %39 = load %struct.cg*, %struct.cg** %11, align 8
  %40 = bitcast %struct.cg* %39 to i8*
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @blkread(i32 %38, i8* %40, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load %struct.cg*, %struct.cg** %11, align 8
  %52 = getelementptr inbounds %struct.cg, %struct.cg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %28
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sblock, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FS_DOSOFTDEP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %58
  %66 = load %struct.cg*, %struct.cg** %11, align 8
  %67 = call i32 @cg_chkmagic(%struct.cg* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.cg*, %struct.cg** %11, align 8
  %74 = call i32* @cg_inosused(%struct.cg* %73)
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @CHAR_BIT, align 4
  %78 = sdiv i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32* %80, i32** %13, align 8
  br label %81

81:                                               ; preds = %110, %72
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %81
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %110

89:                                               ; preds = %84
  %90 = load i32, i32* @CHAR_BIT, align 4
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 1, %91
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %106, %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %109

103:                                              ; preds = %96
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = ashr i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %93

109:                                              ; preds = %102, %93
  br label %116

110:                                              ; preds = %88
  %111 = load i32, i32* @CHAR_BIT, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %115, i32** %13, align 8
  br label %81

116:                                              ; preds = %109, %81
  %117 = load i32, i32* %8, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %215

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %58
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %209, %121
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %214

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @UFS_ROOTINO, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = call %union.dinode* @getino(i32 %131, i32* %7)
  store %union.dinode* %132, %union.dinode** %10, align 8
  %133 = icmp eq %union.dinode* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @IFMT, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %130, %126
  br label %209

140:                                              ; preds = %134
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146)
  br label %209

148:                                              ; preds = %140
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @usedinomap, align 4
  %151 = call i32 @SETINO(i32 %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @IFDIR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @dumpdirmap, align 4
  %158 = call i32 @SETINO(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  %160 = load %union.dinode*, %union.dinode** %10, align 8
  %161 = call i64 @WANTTODUMP(%union.dinode* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @dumpinomap, align 4
  %166 = call i32 @SETINO(i32 %164, i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @IFREG, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @IFDIR, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @IFLNK, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i64*, i64** %4, align 8
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %188

182:                                              ; preds = %174, %170, %163
  %183 = load %union.dinode*, %union.dinode** %10, align 8
  %184 = call i64 @blockest(%union.dinode* %183)
  %185 = load i64*, i64** %4, align 8
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %184
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %182, %178
  br label %209

189:                                              ; preds = %159
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @IFDIR, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %189
  %194 = load i32, i32* @nonodump, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  %197 = load %union.dinode*, %union.dinode** %10, align 8
  %198 = load i32, i32* @di_flags, align 4
  %199 = call i32 @DIP(%union.dinode* %197, i32 %198)
  %200 = load i32, i32* @UF_NODUMP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @usedinomap, align 4
  %206 = call i32 @CLRINO(i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %196, %193
  store i32 1, i32* %9, align 4
  br label %208

208:                                              ; preds = %207, %189
  br label %209

209:                                              ; preds = %208, %188, %144, %139
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %122

214:                                              ; preds = %122
  br label %215

215:                                              ; preds = %214, %119
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %22

218:                                              ; preds = %22
  %219 = load i32, i32* @UFS_ROOTINO, align 4
  %220 = load i32, i32* @dumpinomap, align 4
  %221 = call i32 @SETINO(i32 %219, i32 %220)
  %222 = load i32, i32* %9, align 4
  ret i32 %222
}

declare dso_local %struct.cg* @malloc(i32) #1

declare dso_local i32 @quit(i8*, ...) #1

declare dso_local i32 @blkread(i32, i8*, i32) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cgtod(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cg_chkmagic(%struct.cg*) #1

declare dso_local i32* @cg_inosused(%struct.cg*) #1

declare dso_local %union.dinode* @getino(i32, i32*) #1

declare dso_local i32 @msg(i8*, i32, i32) #1

declare dso_local i32 @SETINO(i32, i32) #1

declare dso_local i64 @WANTTODUMP(%union.dinode*) #1

declare dso_local i64 @blockest(%union.dinode*) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @CLRINO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
