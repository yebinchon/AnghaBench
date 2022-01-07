; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_mkexrc.c_ex_mkexrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_mkexrc.c_ex_mkexrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.stat = type { i32 }

@_PATH_EXRC = common dso_local global i8* null, align 8
@E_C_FORCE = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"137|%s exists, not written; use ! to override\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"abbreviate \00", align 1
@SEQ_ABBREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"map \00", align 1
@SEQ_COMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"map! \00", align 1
@SEQ_INPUT = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"138|New exrc file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_mkexrc(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %40 [
    i32 0, label %15
    i32 1, label %17
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** @_PATH_EXRC, align 8
  store i8* %16, i8** %10, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @INT2CHAR(i32* %18, i32 %25, i32 %33, i8* %34, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @set_alt_name(i32* %37, i8* %38)
  br label %42

40:                                               ; preds = %2
  %41 = call i32 (...) @abort() #3
  unreachable

42:                                               ; preds = %17, %15
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @E_C_FORCE, align 4
  %47 = call i32 @FL_ISSET(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @stat(i8* %50, %struct.stat* %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @M_ERR, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @msgq_str(i32* %54, i32 %55, i8* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %151

58:                                               ; preds = %49, %42
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @O_CREAT, align 4
  %61 = load i32, i32* @O_TRUNC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_WRONLY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @S_IRUSR, align 4
  %66 = load i32, i32* @S_IWUSR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @S_IRGRP, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @S_IROTH, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @open(i8* %59, i32 %64, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @M_SYSERR, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @msgq_str(i32* %75, i32 %76, i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %151

79:                                               ; preds = %58
  %80 = load i32, i32* %8, align 4
  %81 = call i32* @fdopen(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %81, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @errno, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @close(i32 %85)
  br label %145

87:                                               ; preds = %79
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @SEQ_ABBREV, align 4
  %91 = call i64 @seq_save(i32* %88, i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = call i64 @ferror(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %87
  br label %141

98:                                               ; preds = %93
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @SEQ_COMMAND, align 4
  %102 = call i64 @seq_save(i32* %99, i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = call i64 @ferror(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %98
  br label %141

109:                                              ; preds = %104
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @SEQ_INPUT, align 4
  %113 = call i64 @seq_save(i32* %110, i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i32*, i32** %7, align 8
  %117 = call i64 @ferror(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %109
  br label %141

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i64 @opts_save(i32* %121, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %7, align 8
  %127 = call i64 @ferror(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %120
  br label %141

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = call i64 @fclose(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @errno, align 4
  store i32 %135, i32* %9, align 4
  br label %145

136:                                              ; preds = %130
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @M_INFO, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @msgq_str(i32* %137, i32 %138, i8* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %151

141:                                              ; preds = %129, %119, %108, %97
  %142 = load i32, i32* @errno, align 4
  store i32 %142, i32* %9, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i64 @fclose(i32* %143)
  br label %145

145:                                              ; preds = %141, %134, %83
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* @errno, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* @M_SYSERR, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @msgq_str(i32* %147, i32 %148, i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %136, %74, %53
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @INT2CHAR(i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @set_alt_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @msgq_str(i32*, i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @seq_save(i32*, i32*, i8*, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @opts_save(i32*, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
