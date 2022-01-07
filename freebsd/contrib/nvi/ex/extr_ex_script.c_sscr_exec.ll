; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@DBG_FATAL = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"151|No command to execute\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"shell\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sscr_exec(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %16, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i64 @db_last(%struct.TYPE_16__* %20, i32* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %175

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DBG_FATAL, align 4
  %28 = call i64 @db_get(%struct.TYPE_16__* %25, i32 %26, i32 %27, i32** %18, i64* %19)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %175

31:                                               ; preds = %24
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = load i64, i64* %19, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @INT2CHAR(%struct.TYPE_16__* %32, i32* %33, i64 %34, i8* %35, i64 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @sscr_matchprompt(%struct.TYPE_16__* %38, i8* %39, i64 %40, i64* %11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  store i32 1, i32* %13, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 128
  %52 = call i32 @GET_SPACE_RETC(%struct.TYPE_16__* %47, i8* %48, i64 %49, i64 %51)
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memmove(i8* %53, i8* %54, i64 %55)
  br label %58

57:                                               ; preds = %43, %31
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @db_eget(%struct.TYPE_16__* %59, i32 %60, i32** %18, i64* %19, i32* %12)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %89

67:                                               ; preds = %63
  br label %163

68:                                               ; preds = %58
  %69 = load i64, i64* %19, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %89

72:                                               ; preds = %68
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @INT2CHAR(%struct.TYPE_16__* %73, i32* %74, i64 %75, i8* %76, i64 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @sscr_matchprompt(%struct.TYPE_16__* %79, i8* %80, i64 %81, i64* %11)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %72
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %71, %66
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = load i32, i32* @M_BERR, align 4
  %92 = call i32 @msgq(%struct.TYPE_16__* %90, i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %163

93:                                               ; preds = %84
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %94, %95
  %97 = load i8*, i8** %17, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %17, align 8
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %93, %72
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %6, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %17, align 8
  %108 = load i64, i64* %9, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @write(i32 %106, i8* %107, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %122

115:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @write(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @EIO, align 4
  store i32 %126, i32* @errno, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = load i32, i32* @M_SYSERR, align 4
  %130 = call i32 @msgq(%struct.TYPE_16__* %128, i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %163

131:                                              ; preds = %115
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %138, %139
  %141 = call i32 @ADD_SPACE_RETC(%struct.TYPE_16__* %135, i8* %136, i64 %137, i64 %140)
  %142 = load i8*, i8** %16, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i8*, i8** %17, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @memmove(i8* %144, i8* %145, i64 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %150, %151
  %153 = load i32*, i32** %18, align 8
  %154 = load i64, i64* %19, align 8
  %155 = call i32 @CHAR2INT(%struct.TYPE_16__* %148, i8* %149, i64 %152, i32* %153, i64 %154)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = load i64, i64* %19, align 8
  %160 = call i64 @db_set(%struct.TYPE_16__* %156, i32 %157, i32* %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %134
  br label %163

163:                                              ; preds = %162, %127, %89, %67
  store i32 1, i32* %15, align 4
  br label %164

164:                                              ; preds = %163, %134
  br label %165

165:                                              ; preds = %164, %131
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @FREE_SPACE(%struct.TYPE_16__* %169, i8* %170, i64 %171)
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %30, %23
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @db_last(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @db_get(%struct.TYPE_16__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_16__*, i32*, i64, i8*, i64) #1

declare dso_local i64 @sscr_matchprompt(%struct.TYPE_16__*, i8*, i64, i64*) #1

declare dso_local i32 @GET_SPACE_RETC(%struct.TYPE_16__*, i8*, i64, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @db_eget(%struct.TYPE_16__*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @msgq(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ADD_SPACE_RETC(%struct.TYPE_16__*, i8*, i64, i64) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_16__*, i8*, i64, i32*, i64) #1

declare dso_local i64 @db_set(%struct.TYPE_16__*, i32, i32*, i64) #1

declare dso_local i32 @FREE_SPACE(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
