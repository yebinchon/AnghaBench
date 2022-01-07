; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_write_elf_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_write_elf_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhints_hdr = type { i32, i32, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mkstemp(%s)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fchmod(%s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"fdopen(%s)\00", align 1
@ELFHINTS_MAGIC = common dso_local global i32 0, align 4
@ndirs = common dso_local global i32 0, align 4
@dirs = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"rename %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_elf_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_elf_hints(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.elfhints_hdr, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @mkstemp(i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @fchmod(i32 %21, i32 292)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @fdopen(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %29, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @ELFHINTS_MAGIC, align 4
  %36 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 6
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 1
  store i32 48, i32* %38, align 4
  %39 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = load i32, i32* @ndirs, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %34
  %47 = load i8**, i8*** @dirs, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %50
  store i64 %53, i64* %51, align 8
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %69, %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ndirs, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i8**, i8*** @dirs, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 1, %64
  %66 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %65
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %34
  %74 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 3
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %3, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fwrite(%struct.elfhints_hdr* %3, i32 1, i32 48, i32* %80)
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 48
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %73
  %88 = load i32, i32* @ndirs, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87
  %91 = load i8**, i8*** @dirs, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @fputs(i8* %93, i32* %94)
  %96 = load i64, i64* @EOF, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %90
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %119, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @ndirs, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = load i8**, i8*** @dirs, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @fprintf(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %106
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %102

122:                                              ; preds = %102
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i32*, i32** %6, align 8
  %125 = call i64 @putc(i8 signext 0, i32* %124)
  %126 = load i64, i64* @EOF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %6, align 8
  %130 = call i64 @fclose(i32* %129)
  %131 = load i64, i64* @EOF, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %123
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i8*, i8** %4, align 8
  %138 = load i8*, i8** %2, align 8
  %139 = call i32 @rename(i8* %137, i8* %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i8*, i8** %4, align 8
  %143 = load i8*, i8** %2, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @free(i8* %146)
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fwrite(%struct.elfhints_hdr*, i32, i32, i32*) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @putc(i8 signext, i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
