; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_convert_from_ssh2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_convert_from_ssh2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }

@identity_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@__progname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@SSH_COM_PRIVATE_BEGIN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" END \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"uudecode failed.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"decode blob failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, %struct.sshkey**, i32*)* @do_convert_from_ssh2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_convert_from_ssh2(%struct.passwd* %0, %struct.sshkey** %1, i32* %2) #0 {
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.sshkey**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [8096 x i32], align 16
  %13 = alloca [8096 x i8], align 16
  %14 = alloca i32*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @identity_file, align 4
  %16 = call i32* @fopen(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %14, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @__progname, align 4
  %20 = load i32, i32* @identity_file, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %25, align 16
  br label %26

26:                                               ; preds = %72, %69, %65, %24
  %27 = load i32*, i32** %14, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %29 = call i32 @get_line(i32* %27, i8* %28, i32 1024)
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %34, %31
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %51 = call i32* @strstr(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %55 = load i8*, i8** @SSH_COM_PRIVATE_BEGIN, align 8
  %56 = call i32* @strstr(i8* %54, i8* %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %62 = call i32* @strstr(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %76

65:                                               ; preds = %60
  br label %26

66:                                               ; preds = %49
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %9, align 4
  br label %26

72:                                               ; preds = %66
  %73 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 0
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %75 = call i32 @strlcat(i8* %73, i8* %74, i32 8096)
  br label %26

76:                                               ; preds = %64, %26
  %77 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 0
  %78 = call i32 @strlen(i8* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = srem i32 %79, 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %111

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 61
  br i1 %89, label %90, label %111

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 61
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 61
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 %109
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %106, %98, %90, %82, %76
  %112 = getelementptr inbounds [8096 x i8], [8096 x i8]* %13, i64 0, i64 0
  %113 = getelementptr inbounds [8096 x i32], [8096 x i32]* %12, i64 0, i64 0
  %114 = call i32 @uudecode(i8* %112, i32* %113, i32 32384)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %111
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds [8096 x i32], [8096 x i32]* %12, i64 0, i64 0
  %125 = load i32, i32* %8, align 4
  %126 = call %struct.sshkey* @do_convert_private_ssh2_from_blob(i32* %124, i32 %125)
  %127 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  store %struct.sshkey* %126, %struct.sshkey** %127, align 8
  br label %139

128:                                              ; preds = %119
  %129 = getelementptr inbounds [8096 x i32], [8096 x i32]* %12, i64 0, i64 0
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %132 = call i32 @sshkey_from_blob(i32* %129, i32 %130, %struct.sshkey** %131)
  store i32 %132, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @ssh_err(i32 %135)
  %137 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %138, %123
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @fclose(i32* %140)
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @get_line(i32*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @uudecode(i8*, i32*, i32) #1

declare dso_local %struct.sshkey* @do_convert_private_ssh2_from_blob(i32*, i32) #1

declare dso_local i32 @sshkey_from_blob(i32*, i32, %struct.sshkey**) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
