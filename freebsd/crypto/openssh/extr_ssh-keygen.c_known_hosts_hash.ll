; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_known_hosts_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_known_hosts_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkey_foreach_line = type { i32, i8*, i8*, i32, i32, i32*, i32 }
%struct.known_hosts_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"*?!\00", align 1
@HASH_DELIM = common dso_local global i32 0, align 4
@MRK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@find_host = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s:%lu: ignoring host name with wildcard: %.64s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hash_host failed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s:%lu: invalid line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostkey_foreach_line*, i8*)* @known_hosts_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @known_hosts_hash(%struct.hostkey_foreach_line* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostkey_foreach_line*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.known_hosts_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostkey_foreach_line* %0, %struct.hostkey_foreach_line** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.known_hosts_ctx*
  store %struct.known_hosts_ctx* %14, %struct.known_hosts_ctx** %6, align 8
  %15 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %16 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %21 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @strcspn(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %25 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @strlen(i32* %26)
  %28 = icmp ne i64 %23, %27
  br label %29

29:                                               ; preds = %19, %2
  %30 = phi i1 [ false, %2 ], [ %28, %19 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %33 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %38 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HASH_DELIM, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %36, %29
  %45 = phi i1 [ false, %29 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %48 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %134 [
    i32 128, label %50
    i32 129, label %50
    i32 130, label %124
  ]

50:                                               ; preds = %44, %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %58 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MRK_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %56, %53, %50
  %63 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %67 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %62
  %73 = load i32, i32* @find_host, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %77 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %80 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %83 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 (i8*, i32, i32, ...) @logit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %81, i32* %84)
  br label %86

86:                                               ; preds = %75, %72, %62
  store i32 0, i32* %3, align 4
  br label %142

87:                                               ; preds = %56
  %88 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %89 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = call i8* @xstrdup(i32* %90)
  store i8* %91, i8** %9, align 8
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %110, %87
  %93 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %93, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %95, %92
  %101 = phi i1 [ false, %92 ], [ %99, %95 ]
  br i1 %101, label %102, label %121

102:                                              ; preds = %100
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @lowercase(i8* %103)
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @host_hash(i8* %105, i32* null, i32 0)
  store i8* %106, i8** %7, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %112 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %116 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %114, i8* %117)
  %119 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %120 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  br label %92

121:                                              ; preds = %100
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @free(i8* %122)
  store i32 0, i32* %3, align 4
  br label %142

124:                                              ; preds = %44
  %125 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %128 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %131 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, i32, i32, ...) @logit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %44, %124
  %135 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %136 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %139 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %134, %121, %86
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @strcspn(i32*, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @logit(i8*, i32, i32, ...) #1

declare dso_local i8* @xstrdup(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @lowercase(i8*) #1

declare dso_local i8* @host_hash(i8*, i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
