; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_perform_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_perform_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i8*, i8*, i32, i32, i32 }
%struct.config_file = type { i8*, i8*, i8*, i8*, i64, i32, i64, i32, i32, %struct.TYPE_3__, i64*, i64*, i32, i64* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@.str = private unnamed_addr constant [26 x i8] c"Could not chdir to %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"chdir to %s\00", align 1
@LOGIN_SETALL = common dso_local global i64 0, align 8
@LOGIN_SETGROUP = common dso_local global i32 0, align 4
@LOGIN_SETUSER = common dso_local global i32 0, align 4
@cfg_gid = common dso_local global i64 0, align 8
@cfg_uid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon*, %struct.config_file*, i32, i8**, i32)* @perform_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_setup(%struct.daemon* %0, %struct.config_file* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.daemon*, align 8
  %7 = alloca %struct.config_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.daemon* %0, %struct.daemon** %6, align 8
  store %struct.config_file* %1, %struct.config_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.config_file*, %struct.config_file** %7, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load %struct.config_file*, %struct.config_file** %7, align 8
  %18 = getelementptr inbounds %struct.config_file, %struct.config_file* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.config_file*, %struct.config_file** %7, align 8
  %21 = getelementptr inbounds %struct.config_file, %struct.config_file* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.config_file*, %struct.config_file** %7, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @log_init(i32 %19, i64 %22, i8* %25)
  br label %27

27:                                               ; preds = %16, %5
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.config_file*, %struct.config_file** %7, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (...) @detach()
  br label %37

37:                                               ; preds = %35, %30, %27
  %38 = load %struct.daemon*, %struct.daemon** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i8**, i8*** %9, align 8
  %41 = load %struct.config_file*, %struct.config_file** %7, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %107

45:                                               ; preds = %37
  %46 = load %struct.config_file*, %struct.config_file** %7, align 8
  %47 = getelementptr inbounds %struct.config_file, %struct.config_file* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %45
  %54 = load %struct.config_file*, %struct.config_file** %7, align 8
  %55 = getelementptr inbounds %struct.config_file, %struct.config_file* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load %struct.config_file*, %struct.config_file** %7, align 8
  %58 = getelementptr inbounds %struct.config_file, %struct.config_file* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %53
  %62 = load %struct.config_file*, %struct.config_file** %7, align 8
  %63 = getelementptr inbounds %struct.config_file, %struct.config_file* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.config_file*, %struct.config_file** %7, align 8
  %72 = getelementptr inbounds %struct.config_file, %struct.config_file* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.config_file*, %struct.config_file** %7, align 8
  %75 = getelementptr inbounds %struct.config_file, %struct.config_file* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i64 @strncmp(i8* %70, i8* %73, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load %struct.config_file*, %struct.config_file** %7, align 8
  %82 = getelementptr inbounds %struct.config_file, %struct.config_file* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = load i8*, i8** %11, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %80, %69, %61, %53
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i8*, i8** %11, align 8
  %95 = call i64 @chdir(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @strerror(i32 %99)
  %101 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %98, i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32, i32* @VERB_QUERY, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 (i32, i8*, ...) @verbose(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %88
  br label %107

107:                                              ; preds = %106, %45, %37
  %108 = load %struct.config_file*, %struct.config_file** %7, align 8
  %109 = getelementptr inbounds %struct.config_file, %struct.config_file* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = load %struct.config_file*, %struct.config_file** %7, align 8
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.config_file*, %struct.config_file** %7, align 8
  %117 = getelementptr inbounds %struct.config_file, %struct.config_file* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.config_file*, %struct.config_file** %7, align 8
  %120 = getelementptr inbounds %struct.config_file, %struct.config_file* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @log_init(i32 %115, i64 %118, i8* %121)
  br label %123

123:                                              ; preds = %112, %107
  ret void
}

declare dso_local i32 @log_init(i32, i64, i8*) #1

declare dso_local i32 @detach(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
