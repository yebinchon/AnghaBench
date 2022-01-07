; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_getrec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_getrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@firsttime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"RS=<%s>, FS=<%s>, ARGC=%g, FILENAME=%s\0A\00", align 1
@RS = common dso_local global i32* null, align 8
@FS = common dso_local global i32* null, align 8
@ARGC = common dso_local global i64* null, align 8
@FILENAME = common dso_local global i8** null, align 8
@donefld = common dso_local global i64 0, align 8
@donerec = common dso_local global i32 0, align 4
@argno = common dso_local global i64 0, align 8
@infile = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"argno=%d, file=|%s|\0A\00", align 1
@file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"opening file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"can't open file %s\00", align 1
@fnrloc = common dso_local global %struct.TYPE_6__* null, align 8
@fldtab = common dso_local global %struct.TYPE_7__** null, align 8
@REC = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@DONTFREE = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@nrloc = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrec(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i64, i64* @firsttime, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  store i64 0, i64* @firsttime, align 8
  %21 = call i32 (...) @initgetrec()
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32*, i32** @RS, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @FS, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i64*, i64** @ARGC, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i8**, i8*** @FILENAME, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @dprintf(i8* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i64 0, i64* @donefld, align 8
  store i32 1, i32* @donerec, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %200, %75, %68, %35
  %42 = load i64, i64* @argno, align 8
  %43 = load i64*, i64** @ARGC, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** @infile, align 8
  %48 = load i32*, i32** @stdin, align 8
  %49 = icmp eq i32* %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ true, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %203

52:                                               ; preds = %50
  %53 = load i64, i64* @argno, align 8
  %54 = load i8*, i8** @file, align 8
  %55 = call i32 @dprintf(i8* %54)
  %56 = load i32*, i32** @infile, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %108

58:                                               ; preds = %52
  %59 = load i64, i64* @argno, align 8
  %60 = call i8* @getargv(i64 %59)
  store i8* %60, i8** @file, align 8
  %61 = load i8*, i8** @file, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** @file, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58
  %69 = load i64, i64* @argno, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* @argno, align 8
  br label %41

71:                                               ; preds = %63
  %72 = load i8*, i8** @file, align 8
  %73 = call i64 @isclvar(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8*, i8** @file, align 8
  %77 = call i32 @setclvar(i8* %76)
  %78 = load i64, i64* @argno, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* @argno, align 8
  br label %41

80:                                               ; preds = %71
  %81 = load i8*, i8** @file, align 8
  %82 = load i8**, i8*** @FILENAME, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** @file, align 8
  %84 = call i32 @dprintf(i8* %83)
  %85 = load i8*, i8** @file, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i8*, i8** @file, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32*, i32** @stdin, align 8
  store i32* %96, i32** @infile, align 8
  br label %105

97:                                               ; preds = %89, %80
  %98 = load i8*, i8** @file, align 8
  %99 = call i32* @fopen(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %99, i32** @infile, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i8*, i8** @file, align 8
  %103 = call i32 @FATAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fnrloc, align 8
  %107 = call i32 @setfval(%struct.TYPE_6__* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %52
  %109 = load i32*, i32** @infile, align 8
  %110 = call i32 @readrec(i8** %9, i32* %11, i32* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %193

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %176

122:                                              ; preds = %119
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %123, i64 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i64 @freeable(%struct.TYPE_7__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %129, i64 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @xfree(i8* %133)
  br label %135

135:                                              ; preds = %128, %122
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %137, i64 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* @REC, align 4
  %142 = load i32, i32* @STR, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @DONTFREE, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %146, i64 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  %150 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %150, i64 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @is_number(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %135
  %158 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %158, i64 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @atof(i8* %162)
  %164 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %164, i64 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* @NUM, align 4
  %169 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %169, i64 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %168
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %157, %135
  br label %176

176:                                              ; preds = %175, %119
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nrloc, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nrloc, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 @setfval(%struct.TYPE_6__* %177, i32 %181)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fnrloc, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fnrloc, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i32 @setfval(%struct.TYPE_6__* %183, i32 %187)
  %189 = load i8*, i8** %9, align 8
  %190 = load i8**, i8*** %5, align 8
  store i8* %189, i8** %190, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32*, i32** %6, align 8
  store i32 %191, i32* %192, align 4
  store i32 1, i32* %4, align 4
  br label %211

193:                                              ; preds = %113
  %194 = load i32*, i32** @infile, align 8
  %195 = load i32*, i32** @stdin, align 8
  %196 = icmp ne i32* %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32*, i32** @infile, align 8
  %199 = call i32 @fclose(i32* %198)
  br label %200

200:                                              ; preds = %197, %193
  store i32* null, i32** @infile, align 8
  %201 = load i64, i64* @argno, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* @argno, align 8
  br label %41

203:                                              ; preds = %50
  %204 = load i8, i8* %10, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  store i8 %204, i8* %206, align 1
  %207 = load i8*, i8** %9, align 8
  %208 = load i8**, i8*** %5, align 8
  store i8* %207, i8** %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32*, i32** %6, align 8
  store i32 %209, i32* %210, align 4
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %203, %176
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @initgetrec(...) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i8* @getargv(i64) #1

declare dso_local i64 @isclvar(i8*) #1

declare dso_local i32 @setclvar(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i32 @setfval(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @readrec(i8**, i32*, i32*) #1

declare dso_local i64 @freeable(%struct.TYPE_7__*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @is_number(i8*) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
