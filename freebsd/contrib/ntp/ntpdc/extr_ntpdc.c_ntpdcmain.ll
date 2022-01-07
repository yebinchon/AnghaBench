; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_ntpdcmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_ntpdcmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@delay_time = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DEFDELAY = common dso_local global i32 0, align 4
@ipv6_works = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@ai_fam_default = common dso_local global i8* null, align 8
@progname = common dso_local global i8* null, align 8
@ntpdcOptions = common dso_local global i32 0, align 4
@IPV4 = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i8* null, align 8
@IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@COMMAND = common dso_local global i32 0, align 4
@OPT_VALUE_SET_DEBUG_LEVEL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@INTERACTIVE = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@NUMERIC = common dso_local global i32 0, align 4
@showhostnames = common dso_local global i64 0, align 8
@LISTPEERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"listpeers\00", align 1
@PEERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"peers\00", align 1
@SHOWPEERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dmpeers\00", align 1
@ntp_optind = common dso_local global i32 0, align 4
@DEFHOST = common dso_local global i8* null, align 8
@numcmds = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@abortcmd = common dso_local global i32 0, align 4
@INITDATASIZE = common dso_local global i32 0, align 4
@pktdatasize = common dso_local global i32 0, align 4
@pktdata = common dso_local global i32 0, align 4
@chosts = common dso_local global i8** null, align 8
@numhosts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"--- %s ---\0A\00", align 1
@ccmds = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpdcmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delay_time, i32 0, i32 1), align 8
  %10 = load i32, i32* @DEFDELAY, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delay_time, i32 0, i32 0), align 8
  %11 = call i32 (...) @init_lib()
  %12 = call i32 (...) @ssl_applink()
  %13 = call i32 (...) @init_auth()
  %14 = load i32, i32* @ipv6_works, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** @AF_INET, align 8
  store i8* %17, i8** @ai_fam_default, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @progname, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @ntpOptionProcess(i32* @ntpdcOptions, i32 %22, i8** %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %4, align 8
  %32 = load i32, i32* @IPV4, align 4
  %33 = call i64 @HAVE_OPT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i8*, i8** @AF_INET, align 8
  store i8* %36, i8** @ai_fam_templ, align 8
  br label %46

37:                                               ; preds = %18
  %38 = load i32, i32* @IPV6, align 4
  %39 = call i64 @HAVE_OPT(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** @AF_INET6, align 8
  store i8* %42, i8** @ai_fam_templ, align 8
  br label %45

43:                                               ; preds = %37
  %44 = load i8*, i8** @ai_fam_default, align 8
  store i8* %44, i8** @ai_fam_templ, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* @COMMAND, align 4
  %48 = call i64 @HAVE_OPT(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32, i32* @COMMAND, align 4
  %52 = call i32 @STACKCT_OPT(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @COMMAND, align 4
  %54 = call i8** @STACKLST_OPT(i32 %53)
  store i8** %54, i8*** %7, align 8
  br label %55

55:                                               ; preds = %59, %50
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %7, align 8
  %62 = load i8*, i8** %60, align 8
  %63 = call i32 @ADDCMD(i8* %62)
  br label %55

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* @OPT_VALUE_SET_DEBUG_LEVEL, align 4
  store i32 %66, i32* @debug, align 4
  %67 = load i32, i32* @INTERACTIVE, align 4
  %68 = call i64 @HAVE_OPT(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* @interactive, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i32, i32* @NUMERIC, align 4
  %73 = call i64 @HAVE_OPT(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 0, i64* @showhostnames, align 8
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* @LISTPEERS, align 4
  %78 = call i64 @HAVE_OPT(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @ADDCMD(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @PEERS, align 4
  %84 = call i64 @HAVE_OPT(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @ADDCMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* @SHOWPEERS, align 4
  %90 = call i64 @HAVE_OPT(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @ADDCMD(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* @ntp_optind, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** @DEFHOST, align 8
  %100 = call i32 @ADDHOST(i8* %99)
  br label %117

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %113, %101
  %103 = load i32, i32* @ntp_optind, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i8**, i8*** %4, align 8
  %108 = load i32, i32* @ntp_optind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @ADDHOST(i8* %111)
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ntp_optind, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @ntp_optind, align 4
  br label %102

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* @numcmds, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32, i32* @interactive, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32, i32* @stdin, align 4
  %125 = call i32 @fileno(i32 %124)
  %126 = call i64 @isatty(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fileno(i32 %129)
  %131 = call i64 @isatty(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 1, i32* @interactive, align 4
  br label %134

134:                                              ; preds = %133, %128, %123, %120, %117
  %135 = load i32, i32* @interactive, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @SIGINT, align 4
  %139 = load i32, i32* @abortcmd, align 4
  %140 = call i32 @signal_no_reset(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %134
  %142 = load i32, i32* @INITDATASIZE, align 4
  store i32 %142, i32* @pktdatasize, align 4
  %143 = load i32, i32* @INITDATASIZE, align 4
  %144 = call i32 @emalloc(i32 %143)
  store i32 %144, i32* @pktdata, align 4
  %145 = load i32, i32* @numcmds, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i8**, i8*** @chosts, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @openhost(i8* %150)
  %152 = call i32 (...) @getcmds()
  br label %197

153:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %193, %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @numhosts, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %196

158:                                              ; preds = %154
  %159 = load i8**, i8*** @chosts, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @openhost(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %188, %166
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @numcmds, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %167
  %172 = load i32, i32* @numhosts, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i8**, i8*** @chosts, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %174, %171
  %182 = load i32*, i32** @ccmds, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @docmd(i32 %186)
  br label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %167

191:                                              ; preds = %167
  br label %192

192:                                              ; preds = %191, %158
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %154

196:                                              ; preds = %154
  br label %197

197:                                              ; preds = %196, %147
  ret i32 0
}

declare dso_local i32 @init_lib(...) #1

declare dso_local i32 @ssl_applink(...) #1

declare dso_local i32 @init_auth(...) #1

declare dso_local i32 @ntpOptionProcess(i32*, i32, i8**) #1

declare dso_local i64 @HAVE_OPT(i32) #1

declare dso_local i32 @STACKCT_OPT(i32) #1

declare dso_local i8** @STACKLST_OPT(i32) #1

declare dso_local i32 @ADDCMD(i8*) #1

declare dso_local i32 @ADDHOST(i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @signal_no_reset(i32, i32) #1

declare dso_local i32 @emalloc(i32) #1

declare dso_local i64 @openhost(i8*) #1

declare dso_local i32 @getcmds(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @docmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
