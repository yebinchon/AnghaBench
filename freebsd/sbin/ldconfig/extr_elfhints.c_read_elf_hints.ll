; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_read_elf_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_read_elf_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.elfhints_hdr = type { i64, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Cannot open \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot stat \22%s\22\00", align 1
@MAXFILESIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"\22%s\22 is unreasonably large\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot mmap \22%s\22\00", align 1
@ELFHINTS_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"\22%s\22: invalid file format\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\22%s\22: unrecognized file version (%d)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @read_elf_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_elf_hints(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elfhints_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %107

24:                                               ; preds = %20, %16
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fstat(i32 %28, %struct.stat* %6)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAXFILESIZE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @PROT_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MAP_PRIVATE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @mmap(i32* null, i64 %44, i32 %47, i32 %48, i32 %49, i32 0)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** @MAP_FAILED, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %42
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to %struct.elfhints_hdr*
  store %struct.elfhints_hdr* %61, %struct.elfhints_hdr** %8, align 8
  %62 = load %struct.elfhints_hdr*, %struct.elfhints_hdr** %8, align 8
  %63 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ELFHINTS_MAGIC, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.elfhints_hdr*, %struct.elfhints_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = load %struct.elfhints_hdr*, %struct.elfhints_hdr** %8, align 8
  %78 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.elfhints_hdr*, %struct.elfhints_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8* %87, i8** %9, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.elfhints_hdr*, %struct.elfhints_hdr** %8, align 8
  %90 = getelementptr inbounds %struct.elfhints_hdr, %struct.elfhints_hdr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %102, %98
  %100 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %100, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @add_dir(i8* %103, i8* %104, i32 1)
  br label %99

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %23, %106, %81
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @add_dir(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
