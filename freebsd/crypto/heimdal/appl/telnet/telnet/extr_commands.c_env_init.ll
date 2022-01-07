; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { i8*, i64 }
%struct.addrinfo = type { i32*, %struct.addrinfo*, i32 }

@environ = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"unix:\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PRINTER\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"XAUTHORITY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_init() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.env_lst*, align 8
  %4 = alloca [257 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = load i8**, i8*** @environ, align 8
  store i8** %10, i8*** %1, align 8
  br label %11

11:                                               ; preds = %32, %0
  %12 = load i8**, i8*** %1, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i8**, i8*** %1, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strchr(i8* %17, i8 signext 61)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8**, i8*** %1, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call %struct.env_lst* @env_define(i8* %24, i8* %26)
  store %struct.env_lst* %27, %struct.env_lst** %3, align 8
  %28 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %29 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** %2, align 8
  store i8 61, i8* %30, align 1
  br label %31

31:                                               ; preds = %21, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i8**, i8*** %1, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %1, align 8
  br label %11

35:                                               ; preds = %11
  %36 = call %struct.env_lst* @env_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.env_lst* %36, %struct.env_lst** %3, align 8
  %37 = icmp ne %struct.env_lst* %36, null
  br i1 %37, label %38, label %111

38:                                               ; preds = %35
  %39 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %40 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %47 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %111

51:                                               ; preds = %45, %38
  %52 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %53 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strchr(i8* %54, i8 signext 58)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %5, align 8
  %57 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %58 = call i32 @gethostname(i8* %57, i32 256)
  %59 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 256
  store i8 0, i8* %59, align 16
  %60 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %61 = call i64 @strchr(i8* %60, i8 signext 46)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %51
  %64 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 24)
  %65 = load i32, i32* @AI_CANONNAME, align 4
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %68 = call i32 @getaddrinfo(i8* %67, i32* null, %struct.addrinfo* %7, %struct.addrinfo** %8)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %72, %struct.addrinfo** %9, align 8
  br label %73

73:                                               ; preds = %88, %71
  %74 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %75 = icmp ne %struct.addrinfo* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %83 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @strlcpy(i8* %82, i32* %85, i32 256)
  br label %92

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 1
  %91 = load %struct.addrinfo*, %struct.addrinfo** %90, align 8
  store %struct.addrinfo* %91, %struct.addrinfo** %9, align 8
  br label %73

92:                                               ; preds = %81, %73
  %93 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %94 = call i32 @freeaddrinfo(%struct.addrinfo* %93)
  br label %95

95:                                               ; preds = %92, %63
  br label %96

96:                                               ; preds = %95, %51
  %97 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @asprintf(i8** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %104 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %2, align 8
  %108 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %109 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %96
  br label %111

111:                                              ; preds = %110, %45, %35
  %112 = call %struct.env_lst* @env_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %113 = icmp eq %struct.env_lst* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = call %struct.env_lst* @env_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.env_lst* %115, %struct.env_lst** %3, align 8
  %116 = icmp ne %struct.env_lst* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %119 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call %struct.env_lst* @env_define(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  %122 = call i32 @env_unexport(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %117, %114, %111
  %124 = call i32 @env_export(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %125 = call i32 @env_export(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %126 = call i32 @env_export(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.env_lst* @env_define(i8*, i8*) #1

declare dso_local %struct.env_lst* @env_find(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @env_unexport(i8*) #1

declare dso_local i32 @env_export(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
