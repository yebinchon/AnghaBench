; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_addentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_addentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i8*, %struct.entry*, i64, %struct.entry*, %struct.entry*, %struct.entry*, i8*, %struct.entry* }

@freelist = common dso_local global %struct.entry* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"no memory to extend symbol table\0A\00", align 1
@LINK = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"bad name to addentry %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"link to non-existent name\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"duplicate entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.entry* @addentry(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.entry*, align 8
  %9 = alloca %struct.entry*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.entry*, %struct.entry** @freelist, align 8
  %11 = icmp ne %struct.entry* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.entry*, %struct.entry** @freelist, align 8
  store %struct.entry* %13, %struct.entry** %8, align 8
  %14 = load %struct.entry*, %struct.entry** %8, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 8
  %16 = load %struct.entry*, %struct.entry** %15, align 8
  store %struct.entry* %16, %struct.entry** @freelist, align 8
  %17 = load %struct.entry*, %struct.entry** %8, align 8
  %18 = call i32 @memset(%struct.entry* %17, i32 0, i64 72)
  br label %27

19:                                               ; preds = %3
  %20 = call i64 @calloc(i32 1, i32 72)
  %21 = inttoptr i64 %20 to %struct.entry*
  store %struct.entry* %21, %struct.entry** %8, align 8
  %22 = load %struct.entry*, %struct.entry** %8, align 8
  %23 = icmp eq %struct.entry* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LINK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load %struct.entry*, %struct.entry** %8, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.entry* @lookupparent(i8* %34)
  store %struct.entry* %35, %struct.entry** %9, align 8
  %36 = load %struct.entry*, %struct.entry** %9, align 8
  %37 = icmp eq %struct.entry* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %27
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @UFS_ROOTINO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @UFS_ROOTINO, align 8
  %44 = call %struct.entry* @lookupino(i64 %43)
  %45 = icmp ne %struct.entry* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @savename(i8* %50)
  %52 = load %struct.entry*, %struct.entry** %8, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @strlen(i8* %54)
  %56 = load %struct.entry*, %struct.entry** %8, align 8
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.entry*, %struct.entry** %8, align 8
  %59 = load %struct.entry*, %struct.entry** %8, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 6
  store %struct.entry* %58, %struct.entry** %60, align 8
  %61 = load i64, i64* @UFS_ROOTINO, align 8
  %62 = load %struct.entry*, %struct.entry** %8, align 8
  %63 = call i32 @addino(i64 %61, %struct.entry* %62)
  %64 = load %struct.entry*, %struct.entry** %8, align 8
  store %struct.entry* %64, %struct.entry** %4, align 8
  br label %128

65:                                               ; preds = %27
  %66 = load i8*, i8** %5, align 8
  %67 = call i8* @strrchr(i8* %66, i8 signext 47)
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i8* @savename(i8* %68)
  %70 = load %struct.entry*, %struct.entry** %8, align 8
  %71 = getelementptr inbounds %struct.entry, %struct.entry* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.entry*, %struct.entry** %8, align 8
  %73 = getelementptr inbounds %struct.entry, %struct.entry* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @strlen(i8* %74)
  %76 = load %struct.entry*, %struct.entry** %8, align 8
  %77 = getelementptr inbounds %struct.entry, %struct.entry* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.entry*, %struct.entry** %9, align 8
  %79 = load %struct.entry*, %struct.entry** %8, align 8
  %80 = getelementptr inbounds %struct.entry, %struct.entry* %79, i32 0, i32 6
  store %struct.entry* %78, %struct.entry** %80, align 8
  %81 = load %struct.entry*, %struct.entry** %9, align 8
  %82 = getelementptr inbounds %struct.entry, %struct.entry* %81, i32 0, i32 4
  %83 = load %struct.entry*, %struct.entry** %82, align 8
  %84 = load %struct.entry*, %struct.entry** %8, align 8
  %85 = getelementptr inbounds %struct.entry, %struct.entry* %84, i32 0, i32 5
  store %struct.entry* %83, %struct.entry** %85, align 8
  %86 = load %struct.entry*, %struct.entry** %8, align 8
  %87 = load %struct.entry*, %struct.entry** %9, align 8
  %88 = getelementptr inbounds %struct.entry, %struct.entry* %87, i32 0, i32 4
  store %struct.entry* %86, %struct.entry** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @LINK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %65
  %94 = load i64, i64* %6, align 8
  %95 = call %struct.entry* @lookupino(i64 %94)
  store %struct.entry* %95, %struct.entry** %9, align 8
  %96 = load %struct.entry*, %struct.entry** %9, align 8
  %97 = icmp eq %struct.entry* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.entry*, %struct.entry** %8, align 8
  %103 = getelementptr inbounds %struct.entry, %struct.entry* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.entry*, %struct.entry** %9, align 8
  %105 = getelementptr inbounds %struct.entry, %struct.entry* %104, i32 0, i32 2
  %106 = load %struct.entry*, %struct.entry** %105, align 8
  %107 = load %struct.entry*, %struct.entry** %8, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 2
  store %struct.entry* %106, %struct.entry** %108, align 8
  %109 = load %struct.entry*, %struct.entry** %8, align 8
  %110 = load %struct.entry*, %struct.entry** %9, align 8
  %111 = getelementptr inbounds %struct.entry, %struct.entry* %110, i32 0, i32 2
  store %struct.entry* %109, %struct.entry** %111, align 8
  br label %126

112:                                              ; preds = %65
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i64, i64* %6, align 8
  %117 = call %struct.entry* @lookupino(i64 %116)
  %118 = icmp ne %struct.entry* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.entry*, %struct.entry** %8, align 8
  %124 = call i32 @addino(i64 %122, %struct.entry* %123)
  br label %125

125:                                              ; preds = %121, %112
  br label %126

126:                                              ; preds = %125, %100
  %127 = load %struct.entry*, %struct.entry** %8, align 8
  store %struct.entry* %127, %struct.entry** %4, align 8
  br label %128

128:                                              ; preds = %126, %49
  %129 = load %struct.entry*, %struct.entry** %4, align 8
  ret %struct.entry* %129
}

declare dso_local i32 @memset(%struct.entry*, i32, i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local %struct.entry* @lookupparent(i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i8* @savename(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @addino(i64, %struct.entry*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
