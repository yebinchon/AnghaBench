; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_client_mech = type { i8*, i64 (i8*)*, i32 (i8*, i8*)*, i64 }

@verbose = common dso_local global i32 0, align 4
@mechs = common dso_local global %struct.sec_client_mech** null, align 8
@app_data = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"realloc %lu failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Skipping %s...\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Trying %s...\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s is not supported by the server.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s rejected as security mechanism.\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"The server doesn't support the FTP security extensions.\0A\00", align 1
@AUTH_CONTINUE = common dso_local global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4
@mech = common dso_local global %struct.sec_client_mech* null, align 8
@sec_complete = common dso_local global i32 0, align 4
@doencrypt = common dso_local global i64 0, align 8
@prot_private = common dso_local global i8* null, align 8
@command_prot = common dso_local global i8* null, align 8
@request_data_prot = common dso_local global i8* null, align 8
@prot_safe = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_login(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_client_mech**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @verbose, align 4
  store i32 %8, i32* %6, align 4
  store i32 -1, i32* @verbose, align 4
  %9 = load %struct.sec_client_mech**, %struct.sec_client_mech*** @mechs, align 8
  store %struct.sec_client_mech** %9, %struct.sec_client_mech*** %5, align 8
  br label %10

10:                                               ; preds = %130, %1
  %11 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %12 = load %struct.sec_client_mech*, %struct.sec_client_mech** %11, align 8
  %13 = icmp ne %struct.sec_client_mech* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %16 = load %struct.sec_client_mech*, %struct.sec_client_mech** %15, align 8
  %17 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %22, label %133

22:                                               ; preds = %20
  %23 = load i8*, i8** @app_data, align 8
  %24 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %25 = load %struct.sec_client_mech*, %struct.sec_client_mech** %24, align 8
  %26 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @realloc(i8* %23, i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %33 = load %struct.sec_client_mech*, %struct.sec_client_mech** %32, align 8
  %34 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i32 -1, i32* %2, align 4
  br label %139

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** @app_data, align 8
  %39 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %40 = load %struct.sec_client_mech*, %struct.sec_client_mech** %39, align 8
  %41 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %40, i32 0, i32 1
  %42 = load i64 (i8*)*, i64 (i8*)** %41, align 8
  %43 = icmp ne i64 (i8*)* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %46 = load %struct.sec_client_mech*, %struct.sec_client_mech** %45, align 8
  %47 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %46, i32 0, i32 1
  %48 = load i64 (i8*)*, i64 (i8*)** %47, align 8
  %49 = load i8*, i8** @app_data, align 8
  %50 = call i64 %48(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %54 = load %struct.sec_client_mech*, %struct.sec_client_mech** %53, align 8
  %55 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %130

58:                                               ; preds = %44, %37
  %59 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %60 = load %struct.sec_client_mech*, %struct.sec_client_mech** %59, align 8
  %61 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %65 = load %struct.sec_client_mech*, %struct.sec_client_mech** %64, align 8
  %66 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CONTINUE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %58
  %73 = load i32, i32* @code, align 4
  %74 = icmp eq i32 %73, 504
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %77 = load %struct.sec_client_mech*, %struct.sec_client_mech** %76, align 8
  %78 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %99

81:                                               ; preds = %72
  %82 = load i32, i32* @code, align 4
  %83 = icmp eq i32 %82, 534
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %86 = load %struct.sec_client_mech*, %struct.sec_client_mech** %85, align 8
  %87 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %98

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @ERROR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* @verbose, align 4
  store i32 -1, i32* %2, align 4
  br label %139

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %75
  br label %130

100:                                              ; preds = %58
  %101 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %102 = load %struct.sec_client_mech*, %struct.sec_client_mech** %101, align 8
  %103 = getelementptr inbounds %struct.sec_client_mech, %struct.sec_client_mech* %102, i32 0, i32 2
  %104 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %103, align 8
  %105 = load i8*, i8** @app_data, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 %104(i8* %105, i8* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @AUTH_CONTINUE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %130

112:                                              ; preds = %100
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @AUTH_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* @verbose, align 4
  store i32 -1, i32* %2, align 4
  br label %139

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %121 = load %struct.sec_client_mech*, %struct.sec_client_mech** %120, align 8
  store %struct.sec_client_mech* %121, %struct.sec_client_mech** @mech, align 8
  store i32 1, i32* @sec_complete, align 4
  %122 = load i64, i64* @doencrypt, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** @prot_private, align 8
  store i8* %125, i8** @command_prot, align 8
  %126 = load i8*, i8** @prot_private, align 8
  store i8* %126, i8** @request_data_prot, align 8
  br label %129

127:                                              ; preds = %119
  %128 = load i8*, i8** @prot_safe, align 8
  store i8* %128, i8** @command_prot, align 8
  br label %129

129:                                              ; preds = %127, %124
  br label %133

130:                                              ; preds = %111, %99, %52
  %131 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %132 = getelementptr inbounds %struct.sec_client_mech*, %struct.sec_client_mech** %131, i32 1
  store %struct.sec_client_mech** %132, %struct.sec_client_mech*** %5, align 8
  br label %10

133:                                              ; preds = %129, %20
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* @verbose, align 4
  %135 = load %struct.sec_client_mech**, %struct.sec_client_mech*** %5, align 8
  %136 = load %struct.sec_client_mech*, %struct.sec_client_mech** %135, align 8
  %137 = icmp eq %struct.sec_client_mech* %136, null
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %116, %94, %31
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
