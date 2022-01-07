; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_putpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_putpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@PBUFSIZ = common dso_local global i32 0, align 4
@remote_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"putpkt(write)\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"putpkt (\22%s\22); [looking for ack]\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"[received '%c' (0x%x)]\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"putpkt(read): Got EOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"putpkt(read)\00", align 1
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putpkt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 0, i8* %5, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @PBUFSIZ, align 4
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %9, align 8
  store i8 36, i8* %16, align 1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %40, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 35, i8* %44, align 1
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  %51 = call i8* @tohex(i8 zeroext %50)
  %52 = ptrtoint i8* %51 to i8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = trunc i32 %57 to i8
  %59 = call i8* @tohex(i8 zeroext %58)
  %60 = ptrtoint i8* %59 to i8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i8*, i8** %9, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %135, %43
  %65 = load i32, i32* @remote_desc, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @write(i32 %65, i8* %66, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ne i64 %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %143

83:                                               ; preds = %64
  %84 = load i64, i64* @remote_debug, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fflush(i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i32, i32* @remote_desc, align 4
  %94 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %95 = call i32 @read(i32 %93, i8* %94, i32 1)
  store i32 %95, i32* %10, align 4
  %96 = load i64, i64* @remote_debug, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i32, i32* @stderr, align 4
  %100 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 @fflush(i32 %107)
  br label %109

109:                                              ; preds = %98, %92
  %110 = load i32, i32* %10, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %120

118:                                              ; preds = %112
  %119 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @free(i8* %121)
  store i32 -1, i32* %2, align 4
  br label %143

123:                                              ; preds = %109
  %124 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32 (i32)*, i32 (i32)** %130, align 8
  %132 = load i32, i32* @SIGINT, align 4
  %133 = call i32 %131(i32 %132)
  br label %134

134:                                              ; preds = %128, %123
  br label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 43
  br i1 %139, label %64, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @free(i8* %141)
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %120, %81
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @tohex(i8 zeroext) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
