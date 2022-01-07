; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_02.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_02.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@XO_STYLE_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@XO_STYLE_JSON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XO_STYLE_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@XO_STYLE_HTML = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@XOF_PRETTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"xpath\00", align 1
@XOF_XPATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@XOF_INFO = common dso_local global i32 0, align 4
@XOF_UNITS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"{kt:name/%-*.*s}{eq:flags/0x%x}\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"em0\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"{d:/%-*.*s}{etk:name}{eq:flags/0x%x}\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"We are {{emit}}{{ting}} some {:what}\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"braces\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"improper use of profanity; %s; %s\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ten yard penalty\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"first down\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"length {:length/%6.6s}\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"close {:fd/%d} returned {:error/%m} {:test}\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"close {:fd/%d} returned {:error/%6.6m} {:test}\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c" {:lines/%7ju} {:words/%7ju} {:characters/%7ju} {d:filename/%s}\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"{lw:bytes/%d}{Np:byte,bytes}\0A\00", align 1
@.str.26 = private unnamed_addr constant [99 x i8] c"{:mbuf-current/%u}/{:mbuf-cache/%u}/{:mbuf-total/%u} {N:mbufs <&> in use (current\\/cache\\/total)}\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"{:distance/%u}{Uw:miles} from {:location}\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Boston\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"{:memory/%u}{U:k} left out of {:total/%u}{U:kb}\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"{:memory/%u}{U:/%s} left out of {:total/%u}{U:/%s}\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"kilobytes\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"{,title:/before%safter:}\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"working\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"{,display,white,colon:some/%s}{,value:ten/%ju}{,value:eleven/%ju}\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"{:unknown/%u} {N:/packet%s here\\/there\\/everywhere}\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"{:unknown/%u} {,note:/packet%s here\\/there\\/everywhere}\0A\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"({[:/%d}{n:min/15}/{n:cur/20}/{:max/%d}{]:})\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"({[:30}{:min/%u}/{:cur/%u}/{:max/%u}{]:})\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"({[:-30}{n:min/15}/{n:cur/20}/{n:max/125}{]:})\0A\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"({[:}{:min/%u}/{:cur/%u}/{:max/%u}{]:/%d})\0A\00", align 1
@.str.44 = private unnamed_addr constant [114 x i8] c"Humanize: {h:val1/%u}, {h,hn-space:val2/%u}, {h,hn-decimal:val3/%u}, {h,hn-1000:val4/%u}, {h,hn-decimal:val5/%u}\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"{lq:flag/one} {lq:flag/two} {lq:flag/three}\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"{n:works/%s}\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"{e:empty-tag/}\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"1:{qt:t1/%*d} 2:{qt:t2/test%-*u} 3:{qt:t3/%10sx} 4:{qt:t4/x%-*.*s}\0A\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ten-long\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"{E:this is an error}\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"{E:/%s more error%s}\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"{W:this is an warning}\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"{W:/%s more warning%s}\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"{L:/V1\\/V2 packet%s}: {:count/%u}\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"{:test/%04d} {L:/tr%s}\0A\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"ies\00", align 1
@.str.61 = private unnamed_addr constant [57 x i8] c"Shut 'er down, Clancey!  She's a-pumpin' mud!  <>!,\22!<>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @xo_parse_args(i32 %8, i8** %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %175

14:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %106, %14
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %109

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @xo_streq(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @XO_STYLE_XML, align 4
  %32 = call i32 @xo_set_style(i32* null, i32 %31)
  br label %105

33:                                               ; preds = %22
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @xo_streq(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @XO_STYLE_JSON, align 4
  %43 = call i32 @xo_set_style(i32* null, i32 %42)
  br label %104

44:                                               ; preds = %33
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @xo_streq(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @XO_STYLE_TEXT, align 4
  %54 = call i32 @xo_set_style(i32* null, i32 %53)
  br label %103

55:                                               ; preds = %44
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @xo_streq(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @XO_STYLE_HTML, align 4
  %65 = call i32 @xo_set_style(i32* null, i32 %64)
  br label %102

66:                                               ; preds = %55
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @xo_streq(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @XOF_PRETTY, align 4
  %76 = call i32 @xo_set_flags(i32* null, i32 %75)
  br label %101

77:                                               ; preds = %66
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @xo_streq(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @XOF_XPATH, align 4
  %87 = call i32 @xo_set_flags(i32* null, i32 %86)
  br label %100

88:                                               ; preds = %77
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @xo_streq(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @XOF_INFO, align 4
  %98 = call i32 @xo_set_flags(i32* null, i32 %97)
  br label %99

99:                                               ; preds = %96, %88
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101, %63
  br label %103

103:                                              ; preds = %102, %52
  br label %104

104:                                              ; preds = %103, %41
  br label %105

105:                                              ; preds = %104, %30
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %15

109:                                              ; preds = %15
  %110 = load i32, i32* @XOF_UNITS, align 4
  %111 = call i32 @xo_set_flags(i32* null, i32 %110)
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @xo_set_file(i32 %112)
  %114 = call i32 @xo_open_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 5, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 34883)
  %117 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 5, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 34883)
  %118 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %119 = call i32 (i8*, ...) @xo_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %120 = call i32 @close(i32 -1)
  %121 = call i32 @xo_message_e(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @xo_message(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %124 = call i32 @close(i32 -1)
  %125 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %126 = call i32 @close(i32 -1)
  %127 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @xo_message(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 20, i32 30, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %136, %109
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 5
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %130

139:                                              ; preds = %130
  %140 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.26, i64 0, i64 0), i32 10, i32 20, i32 30)
  %141 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %142 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i32 64, i32 640)
  %143 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 640, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %144 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  %145 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 10, i32 11)
  %146 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0), i32 1010, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %147 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i64 0, i64 0), i32 1010, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %148 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i64 0, i64 0), i32 30, i32 125)
  %149 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i32 15, i32 20, i32 125)
  %150 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.42, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i64 0, i64 0), i32 15, i32 20, i32 125, i32 -30)
  %152 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.44, i64 0, i64 0), i32 21, i32 58368, i32 100663296, i32 44470272, i32 1342172800)
  %153 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  %154 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i64 0, i64 0))
  %155 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  %156 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8* null)
  %157 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0))
  %158 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0), i32 6, i32 1000, i32 8, i32 5000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 10, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  %159 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %161 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 10)
  store i32 4, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 1
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)
  %169 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i32 %164, i8* %168)
  %170 = call i32 (i8*, ...) @xo_message(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %171 = call i32 @xo_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.61, i64 0, i64 0))
  %172 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %173 = call i32 @xo_close_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %174 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %139, %13
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32 @xo_set_style(i32*, i32) #1

declare dso_local i32 @xo_set_flags(i32*, i32) #1

declare dso_local i32 @xo_set_file(i32) #1

declare dso_local i32 @xo_open_container_h(i32*, i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_message(i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xo_message_e(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_error(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_close_container_h(i32*, i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
