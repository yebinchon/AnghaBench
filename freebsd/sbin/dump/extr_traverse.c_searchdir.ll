; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_searchdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_searchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.direct = type { i64, i64, i8* }
%union.dinode = type { i32 }

@searchdir.dblk = internal global i32* null, align 8
@sblock = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"searchdir: cannot allocate indirect memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"corrupted directory, inumber %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"corrupted directory entry, d_ino %ju >= %ju\0A\00", align 1
@dumpinomap = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@dumpdirmap = common dso_local global i32 0, align 4
@usedinomap = common dso_local global i32 0, align 4
@HASSUBDIRS = common dso_local global i64 0, align 8
@HASDUMPEDFILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i64, i64*, i32, i64)* @searchdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searchdir(i64 %0, i32 %1, i64 %2, i64 %3, i64* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.direct*, align 8
  %17 = alloca %union.dinode*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** @searchdir.dblk, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %7
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sblock, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @malloc(i32 %25)
  store i32* %26, i32** @searchdir.dblk, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @quit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22, %7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sblock, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @fsbtodb(%struct.TYPE_3__* %31, i32 %32)
  %34 = load i32*, i32** @searchdir.dblk, align 8
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @blkread(i32 %33, i32* %34, i32 %36)
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %30
  store i64 0, i64* %18, align 8
  br label %44

44:                                               ; preds = %200, %119, %102, %71, %43
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %201

48:                                               ; preds = %44
  %49 = load i32*, i32** @searchdir.dblk, align 8
  %50 = load i64, i64* %18, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = bitcast i32* %51 to %struct.direct*
  store %struct.direct* %52, %struct.direct** %16, align 8
  %53 = load %struct.direct*, %struct.direct** %16, align 8
  %54 = getelementptr inbounds %struct.direct, %struct.direct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, i32, ...) @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %201

61:                                               ; preds = %48
  %62 = load %struct.direct*, %struct.direct** %16, align 8
  %63 = getelementptr inbounds %struct.direct, %struct.direct* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %18, align 8
  %67 = load %struct.direct*, %struct.direct** %16, align 8
  %68 = getelementptr inbounds %struct.direct, %struct.direct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %44

72:                                               ; preds = %61
  %73 = load %struct.direct*, %struct.direct** %16, align 8
  %74 = getelementptr inbounds %struct.direct, %struct.direct* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.direct*, %struct.direct** %16, align 8
  %80 = getelementptr inbounds %struct.direct, %struct.direct* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %14, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i8*, i32, ...) @msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %84)
  br label %201

86:                                               ; preds = %72
  %87 = load %struct.direct*, %struct.direct** %16, align 8
  %88 = getelementptr inbounds %struct.direct, %struct.direct* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %121

94:                                               ; preds = %86
  %95 = load %struct.direct*, %struct.direct** %16, align 8
  %96 = getelementptr inbounds %struct.direct, %struct.direct* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %44

103:                                              ; preds = %94
  %104 = load %struct.direct*, %struct.direct** %16, align 8
  %105 = getelementptr inbounds %struct.direct, %struct.direct* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 46
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.direct*, %struct.direct** %16, align 8
  %113 = getelementptr inbounds %struct.direct, %struct.direct* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %44

120:                                              ; preds = %111, %103
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %121
  %125 = load %struct.direct*, %struct.direct** %16, align 8
  %126 = getelementptr inbounds %struct.direct, %struct.direct* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call %union.dinode* @getino(i64 %127, i32* %15)
  store %union.dinode* %128, %union.dinode** %17, align 8
  %129 = load %struct.direct*, %struct.direct** %16, align 8
  %130 = getelementptr inbounds %struct.direct, %struct.direct* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @dumpinomap, align 4
  %133 = call i64 @TSTINO(i64 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %124
  %136 = load %struct.direct*, %struct.direct** %16, align 8
  %137 = getelementptr inbounds %struct.direct, %struct.direct* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @dumpinomap, align 4
  %140 = call i32 @CLRINO(i64 %138, i32 %139)
  %141 = load %union.dinode*, %union.dinode** %17, align 8
  %142 = call i64 @blockest(%union.dinode* %141)
  %143 = load i64*, i64** %12, align 8
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, %142
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %135, %124
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @IFDIR, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.direct*, %struct.direct** %16, align 8
  %152 = getelementptr inbounds %struct.direct, %struct.direct* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @dumpdirmap, align 4
  %155 = call i32 @SETINO(i64 %153, i32 %154)
  %156 = load %struct.direct*, %struct.direct** %16, align 8
  %157 = getelementptr inbounds %struct.direct, %struct.direct* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @usedinomap, align 4
  %160 = call i32 @CLRINO(i64 %158, i32 %159)
  %161 = load i64, i64* @HASSUBDIRS, align 8
  %162 = load i64, i64* %19, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %19, align 8
  br label %164

164:                                              ; preds = %150, %146
  br label %200

165:                                              ; preds = %121
  %166 = load %struct.direct*, %struct.direct** %16, align 8
  %167 = getelementptr inbounds %struct.direct, %struct.direct* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @dumpinomap, align 4
  %170 = call i64 @TSTINO(i64 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load i64, i64* @HASDUMPEDFILE, align 8
  %174 = load i64, i64* %19, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %19, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load i64, i64* @HASSUBDIRS, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %201

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %165
  %183 = load %struct.direct*, %struct.direct** %16, align 8
  %184 = getelementptr inbounds %struct.direct, %struct.direct* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @dumpdirmap, align 4
  %187 = call i64 @TSTINO(i64 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load i64, i64* @HASSUBDIRS, align 8
  %191 = load i64, i64* %19, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %19, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* @HASDUMPEDFILE, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %201

198:                                              ; preds = %189
  br label %199

199:                                              ; preds = %198, %182
  br label %200

200:                                              ; preds = %199, %164
  br label %44

201:                                              ; preds = %197, %180, %78, %57, %44
  %202 = load i64, i64* %19, align 8
  %203 = trunc i64 %202 to i32
  ret i32 %203
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @blkread(i32, i32*, i32) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @msg(i8*, i32, ...) #1

declare dso_local %union.dinode* @getino(i64, i32*) #1

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i32 @CLRINO(i64, i32) #1

declare dso_local i64 @blockest(%union.dinode*) #1

declare dso_local i32 @SETINO(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
