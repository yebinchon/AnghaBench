; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_prepare_options_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_prepare_options_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i64 }
%struct.sshbuf = type { i32 }

@OPTIONS_CRITICAL = common dso_local global i32 0, align 4
@certflags_command = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"force-command\00", align 1
@OPTIONS_EXTENSIONS = common dso_local global i32 0, align 4
@certflags_flags = common dso_local global i32 0, align 4
@CERTOPT_X_FWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"permit-X11-forwarding\00", align 1
@CERTOPT_AGENT_FWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"permit-agent-forwarding\00", align 1
@CERTOPT_PORT_FWD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"permit-port-forwarding\00", align 1
@CERTOPT_PTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"permit-pty\00", align 1
@CERTOPT_USER_RC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"permit-user-rc\00", align 1
@certflags_src_addr = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"source-address\00", align 1
@ncert_userext = common dso_local global i64 0, align 8
@cert_userext = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshbuf*, i32)* @prepare_options_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_options_buf(%struct.sshbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %7 = call i32 @sshbuf_reset(%struct.sshbuf* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @OPTIONS_CRITICAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** @certflags_command, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %17 = load i32*, i32** @certflags_command, align 8
  %18 = call i32 @add_string_option(%struct.sshbuf* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %17)
  br label %19

19:                                               ; preds = %15, %12, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @certflags_flags, align 4
  %26 = load i32, i32* @CERTOPT_X_FWD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %31 = call i32 @add_flag_option(%struct.sshbuf* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @certflags_flags, align 4
  %39 = load i32, i32* @CERTOPT_AGENT_FWD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %44 = call i32 @add_flag_option(%struct.sshbuf* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37, %32
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @certflags_flags, align 4
  %52 = load i32, i32* @CERTOPT_PORT_FWD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %57 = call i32 @add_flag_option(%struct.sshbuf* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50, %45
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* @certflags_flags, align 4
  %65 = load i32, i32* @CERTOPT_PTY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %70 = call i32 @add_flag_option(%struct.sshbuf* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* @certflags_flags, align 4
  %78 = load i32, i32* @CERTOPT_USER_RC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %83 = call i32 @add_flag_option(%struct.sshbuf* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76, %71
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @OPTIONS_CRITICAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32*, i32** @certflags_src_addr, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %94 = load i32*, i32** @certflags_src_addr, align 8
  %95 = call i32 @add_string_option(%struct.sshbuf* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %94)
  br label %96

96:                                               ; preds = %92, %89, %84
  store i64 0, i64* %5, align 8
  br label %97

97:                                               ; preds = %155, %96
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @ncert_userext, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %158

101:                                              ; preds = %97
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @OPTIONS_CRITICAL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %108
  br label %155

126:                                              ; preds = %120, %113
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @add_flag_option(%struct.sshbuf* %134, i8* %139)
  br label %154

141:                                              ; preds = %126
  %142 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cert_userext, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @add_string_option(%struct.sshbuf* %142, i8* %147, i32* %152)
  br label %154

154:                                              ; preds = %141, %133
  br label %155

155:                                              ; preds = %154, %125
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %5, align 8
  br label %97

158:                                              ; preds = %97
  ret void
}

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @add_string_option(%struct.sshbuf*, i8*, i32*) #1

declare dso_local i32 @add_flag_option(%struct.sshbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
