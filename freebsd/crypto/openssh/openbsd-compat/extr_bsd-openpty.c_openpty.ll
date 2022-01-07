; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-openpty.c_openpty.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-openpty.c_openpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32 }
%struct.winsize = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"pqrstuvwxyzabcdefghijklmnoABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/dev/pty%c%c\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/dev/tty%c%c\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"/dev/ptyp%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/dev/ttyp%d\00", align 1
@ECHO = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@I_PUSH = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpty(i32* %0, i32* %1, i8* %2, %struct.termios* %3, %struct.winsize* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.termios*, align 8
  %11 = alloca %struct.winsize*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.termios, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.termios* %3, %struct.termios** %10, align 8
  store %struct.winsize* %4, %struct.winsize** %11, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i8*, i8** %15, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = load i32, i32* %17, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %131, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %134

30:                                               ; preds = %26
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %32 = load i8*, i8** %15, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %17, align 4
  %35 = sdiv i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %17, align 4
  %42 = srem i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %31, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8 signext %38, i32 %46)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %49 = load i8*, i8** %15, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sdiv i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %16, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %17, align 4
  %59 = srem i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %48, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8 signext %55, i32 %63)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %66 = load i32, i32* @O_RDWR, align 4
  %67 = load i32, i32* @O_NOCTTY, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @open(i8* %65, i32 %68)
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = icmp eq i32 %69, -1
  br i1 %71, label %72, label %90

72:                                               ; preds = %30
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %74 = load i32, i32* %14, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %73, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8 signext %75)
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %78 = load i32, i32* %14, align 4
  %79 = trunc i32 %78 to i8
  %80 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %77, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8 signext %79)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %82 = load i32, i32* @O_RDWR, align 4
  %83 = load i32, i32* @O_NOCTTY, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @open(i8* %81, i32 %84)
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = icmp eq i32 %85, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %131

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %30
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %92 = load i32, i32* @O_RDWR, align 4
  %93 = load i32, i32* @O_NOCTTY, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @open(i8* %91, i32 %94)
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = icmp eq i32 %95, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @close(i32 %100)
  store i32 -1, i32* %6, align 4
  br label %135

102:                                              ; preds = %90
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tcgetattr(i32 %104, %struct.termios* %19)
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = load i32, i32* @ECHO, align 4
  %109 = load i32, i32* @ISIG, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @ICANON, align 4
  %112 = or i32 %110, %111
  %113 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @OPOST, align 4
  %117 = load i32, i32* @ONLCR, align 4
  %118 = or i32 %116, %117
  %119 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @ICRNL, align 4
  %123 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TCSANOW, align 4
  %129 = call i32 @tcsetattr(i32 %127, i32 %128, %struct.termios* %19)
  br label %130

130:                                              ; preds = %107, %102
  store i32 0, i32* %6, align 4
  br label %135

131:                                              ; preds = %88
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %26

134:                                              ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %130, %98
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
