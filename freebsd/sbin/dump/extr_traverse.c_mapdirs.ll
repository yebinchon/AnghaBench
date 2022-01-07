; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_mapdirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_mapdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%union.dinode = type { i32 }

@dumpdirmap = common dso_local global i8* null, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@nonodump = common dso_local global i32 0, align 4
@usedinomap = common dso_local global i32 0, align 4
@dumpinomap = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_3__* null, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@HASDUMPEDFILE = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_ib = common dso_local global i32* null, align 8
@HASSUBDIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mapdirs(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %union.dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.dinode, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** @dumpdirmap, align 8
  store i8* %15, i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %211, %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %214

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @CHAR_BIT, align 4
  %24 = srem i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %9, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @nonodump, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @usedinomap, align 4
  %40 = call i64 @TSTINO(i32 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @dumpinomap, align 4
  %51 = call i64 @TSTINO(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %42
  br label %211

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %10, align 4
  %59 = call %union.dinode* @getino(i32 %58, i32* %6)
  store %union.dinode* %59, %union.dinode** %5, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sblock, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %union.dinode*, %union.dinode** %5, align 8
  %67 = bitcast %union.dinode* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.dinode* %11 to i32*
  store i32 %68, i32* %69, align 4
  br label %75

70:                                               ; preds = %57
  %71 = load %union.dinode*, %union.dinode** %5, align 8
  %72 = bitcast %union.dinode* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = bitcast %union.dinode* %11 to i32*
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @di_size, align 4
  %77 = call i64 @DIP(%union.dinode* %11, i32 %76)
  store i64 %77, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %128, %75
  %79 = load i64, i64* %12, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @UFS_NDADDR, align 4
  %84 = icmp slt i32 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %131

87:                                               ; preds = %85
  %88 = load i32*, i32** @di_db, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @DIP(%union.dinode* %11, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** @di_db, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @DIP(%union.dinode* %11, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sblock, align 8
  %104 = load i32, i32* @di_size, align 4
  %105 = call i64 @DIP(%union.dinode* %11, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @sblksize(%struct.TYPE_3__* %103, i64 %105, i32 %106)
  %108 = load i64, i64* %12, align 8
  %109 = load i64*, i64** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @searchdir(i32 %96, i64 %102, i64 %107, i64 %108, i64* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %95, %87
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @HASDUMPEDFILE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i64 0, i64* %12, align 8
  br label %127

121:                                              ; preds = %115
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sblock, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %12, align 8
  br label %127

127:                                              ; preds = %121, %120
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %78

131:                                              ; preds = %85
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %165, %131
  %133 = load i64, i64* %12, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @UFS_NIADDR, align 4
  %138 = icmp slt i32 %136, %137
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi i1 [ false, %132 ], [ %138, %135 ]
  br i1 %140, label %141, label %168

141:                                              ; preds = %139
  %142 = load i32*, i32** @di_ib, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @DIP(%union.dinode* %11, i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %165

150:                                              ; preds = %141
  %151 = load i32, i32* %10, align 4
  %152 = load i32*, i32** @di_ib, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @DIP(%union.dinode* %11, i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = load i64*, i64** %4, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @dirindir(i32 %151, i64 %157, i32 %158, i64* %12, i64* %159, i32 %160, i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %150, %149
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %132

168:                                              ; preds = %139
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @HASDUMPEDFILE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @dumpinomap, align 4
  %176 = call i32 @SETINO(i32 %174, i32 %175)
  %177 = call i64 @blockest(%union.dinode* %11)
  %178 = load i64*, i64** %4, align 8
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %177
  store i64 %180, i64* %178, align 8
  store i32 1, i32* %14, align 4
  br label %211

181:                                              ; preds = %168
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @HASSUBDIRS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %14, align 4
  br label %190

190:                                              ; preds = %189, %184
  %191 = load i32, i32* %10, align 4
  %192 = load i8*, i8** @dumpdirmap, align 8
  %193 = call i32 @CLRINO(i32 %191, i8* %192)
  br label %210

194:                                              ; preds = %181
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @HASSUBDIRS, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @dumpinomap, align 4
  %202 = call i64 @TSTINO(i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = load i8*, i8** @dumpdirmap, align 8
  %207 = call i32 @CLRINO(i32 %205, i8* %206)
  store i32 1, i32* %14, align 4
  br label %208

208:                                              ; preds = %204, %199
  br label %209

209:                                              ; preds = %208, %194
  br label %210

210:                                              ; preds = %209, %190
  br label %211

211:                                              ; preds = %210, %173, %56
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %16

214:                                              ; preds = %16
  %215 = load i32, i32* %14, align 4
  ret i32 %215
}

declare dso_local i64 @TSTINO(i32, i32) #1

declare dso_local %union.dinode* @getino(i32, i32*) #1

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @searchdir(i32, i64, i64, i64, i64*, i32, i32) #1

declare dso_local i64 @sblksize(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @dirindir(i32, i64, i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @SETINO(i32, i32) #1

declare dso_local i64 @blockest(%union.dinode*) #1

declare dso_local i32 @CLRINO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
