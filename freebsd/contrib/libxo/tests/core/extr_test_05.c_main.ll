; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_05.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_05.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.employee = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"Jim\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\E1\83\A0\E1\83\94\E1\83\92\E1\83\A2\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\E1\83\92\E1\83\97\E1\83\AE\E1\83\9D\E1\83\95\E1\83\97 \E1\83\90\E1\83\AE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Terry\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<one\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\CE\9F\E1\BD\90\CF\87\E1\BD\B6 \CF\84\CE\B1\E1\BD\90\CF\84\E1\BD\B0 \CF\80\CE\B1\CF\81\E1\BD\B7\CF\83\CF\84\CE\B1\CF\84\CE\B1\E1\BD\B7 \CE\BC\CE\BF\CE\B9 Jones\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Leslie\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Les\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Patterson\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Ashley\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Ash\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Meter & Smith\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"012345678901234567890\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\E1\83\90\E1\83\AE\E1\83\9A\E1\83\90\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\E1\83\92\E1\83\90\E1\83\98\E1\83\90\E1\83\A0\E1\83\9D\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\E1\83\A1\E1\83\90\E1\83\94\E1\83\A0\E1\83\97\E1\83\90\E1\83\A8\E1\83\9D\E1\83\A0\E1\83\98\E1\83\A1\E1\83\9D\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Mick\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\E0\B7\B4\E0\B7\B4\00", align 1
@__const.main.employees = private unnamed_addr constant [8 x %struct.employee] [%struct.employee { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 431, i32 90 }, %struct.employee { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0), i32 660, i32 90 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 341, i32 60 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1440, i32 40 }, %struct.employee { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 1440, i32 40 }, %struct.employee { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 123, i32 90 }, %struct.employee { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 110, i32 20 }, %struct.employee zeroinitializer], align 16
@info = common dso_local global i32 0, align 4
@info_count = common dso_local global i32 0, align 4
@XOF_COLUMNS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"indian-languages\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"{T:Sample text}\0A\00", align 1
@.str.22 = private unnamed_addr constant [115 x i8] c"This sample text was taken from the Punjabi Wikipedia article on Lahore and transliterated into the Latin script.\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"{T:Gurmukhi:}\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"{:gurmukhi}\0A\00", align 1
@.str.25 = private unnamed_addr constant [712 x i8] c"\E0\A8\B2\E0\A8\B9\E0\A9\8C\E0\A8\B0 \E0\A8\AA\E0\A8\BE\E0\A8\95\E0\A8\BF\E0\A8\B8\E0\A8\A4\E0\A8\BE\E0\A8\A8\E0\A9\80 \E0\A8\AA\E0\A9\B0\E0\A8\9C\E0\A8\BE\E0\A8\AC \E0\A8\A6\E0\A9\80 \E0\A8\B0\E0\A8\BE\E0\A8\9C\E0\A8\A7\E0\A8\BE\E0\A8\A8\E0\A9\80 \E0\A8\B9\E0\A9\88 \E0\A5\A4 \E0\A8\B2\E0\A9\8B\E0\A8\95 \E0\A8\97\E0\A8\BF\E0\A8\A3\E0\A8\A4\E0\A9\80 \E0\A8\A6\E0\A9\87 \E0\A8\A8\E0\A8\BE\E0\A8\B2 \E0\A8\95\E0\A8\B0\E0\A8\BE\E0\A8\9A\E0\A9\80 \E0\A8\A4\E0\A9\8B\E0\A8\82 \E0\A8\AC\E0\A8\BE\E0\A8\85\E0\A8\A6 \E0\A8\B2\E0\A8\B9\E0\A9\8C\E0\A8\B0 \E0\A8\A6\E0\A9\82\E0\A8\9C\E0\A8\BE \E0\A8\B8\E0\A8\AD \E0\A8\A4\E0\A9\8B\E0\A8\82 \E0\A8\B5\E0\A9\B1\E0\A8\A1\E0\A8\BE \E0\A8\B8\E0\A8\BC\E0\A8\B9\E0\A8\BF\E0\A8\B0 \E0\A8\B9\E0\A9\88 \E0\A5\A4 \E0\A8\B2\E0\A8\B9\E0\A9\8C\E0\A8\B0 \E0\A8\AA\E0\A8\BE\E0\A8\95\E0\A8\BF\E0\A8\B8\E0\A8\A4\E0\A8\BE\E0\A8\A8 \E0\A8\A6\E0\A8\BE \E0\A8\B8\E0\A8\BF\E0\A8\86\E0\A8\B8\E0\A9\80, \E0\A8\B0\E0\A8\B9\E0\A8\A4\E0\A8\B2\E0\A9\80 \E0\A8\A4\E0\A9\87 \E0\A8\AA\E0\A9\9C\E0\A9\8D\E0\A8\B9\E0\A8\BE\E0\A8\88 \E0\A8\A6\E0\A8\BE \E0\A8\97\E0\A9\9C\E0\A9\8D\E0\A8\B9 \E0\A8\B9\E0\A9\88 \E0\A8\85\E0\A8\A4\E0\A9\87 \E0\A8\87\E0\A8\B8 \E0\A8\B2\E0\A8\88 \E0\A8\87\E0\A8\B9\E0\A8\A8\E0\A9\82\E0\A9\B0 \E0\A8\AA\E0\A8\BE\E0\A8\95\E0\A8\BF\E0\A8\B8\E0\A8\A4\E0\A8\BE\E0\A8\A8 \E0\A8\A6\E0\A8\BE \E0\A8\A6\E0\A8\BF\E0\A8\B2 \E0\A8\B5\E0\A9\80 \E0\A8\95\E0\A8\BF\E0\A8\B9\E0\A8\BE \E0\A8\9C\E0\A8\BE\E0\A8\82\E0\A8\A6\E0\A8\BE \E0\A8\B9\E0\A9\88 \E0\A5\A4 \E0\A8\B2\E0\A8\B9\E0\A9\8C\E0\A8\B0 \E0\A8\A6\E0\A8\B0\E0\A8\BF\E0\A8\86-\E0\A8\8F-\E0\A8\B0\E0\A8\BE\E0\A8\B5\E0\A9\80 \E0\A8\A6\E0\A9\87 \E0\A8\95\E0\A9\B0\E0\A8\A2\E0\A9\87 \E0\A8\A4\E0\A9\87 \E0\A8\B5\E0\A8\B8\E0\A8\A6\E0\A8\BE \E0\A8\B9\E0\A9\88 \E0\A8\A4\E0\A9\87 \E0\A8\87\E0\A8\B8\E0\A8\A6\E0\A9\80 \E0\A8\B2\E0\A9\8B\E0\A8\95 \E0\A8\97\E0\A8\BF\E0\A8\A3\E0\A8\A4\E0\A9\80 \E0\A8\87\E0\A9\B1\E0\A8\95 \E0\A8\95\E0\A8\B0\E0\A9\8B\E0\A9\9C \E0\A8\A6\E0\A9\87 \E0\A8\A8\E0\A9\87\E0\A9\9C\E0\A9\87 \E0\A8\B9\E0\A9\88 \E0\A5\A4\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"{T:Shahmukhi:}\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"{:shahmukhi}\0A\00", align 1
@.str.28 = private unnamed_addr constant [476 x i8] c"\D9\84\DB\81\D9\88\D8\B1 \D9\BE\D8\A7\DA\A9\D8\B3\D8\AA\D8\A7\D9\86\DB\8C \D9\BE\D9\86\D8\AC\D8\A7\D8\A8 \D8\AF\D8\A7 \D8\AF\D8\A7\D8\B1\D8\A7\D9\84\D8\AD\DA\A9\D9\88\D9\85\D8\AA \D8\A7\DB\92\DB\94 \D9\84\D9\88\DA\A9 \DA\AF\D9\86\D8\AA\DB\8C \D8\AF\DB\92 \D9\86\D8\A7\D9\84 \DA\A9\D8\B1\D8\A7\DA\86\DB\8C \D8\AA\D9\88\DA\BA \D8\A8\D8\B9\D8\AF \D9\84\DB\81\D9\88\D8\B1 \D8\AF\D9\88\D8\AC\D8\A7 \D8\B3\D8\A8\DA\BE \D8\AA\D9\88\DA\BA \D9\88\DA\88\D8\A7 \D8\B4\DB\81\D8\B1 \D8\A7\DB\92\DB\94 \D9\84\DB\81\D9\88\D8\B1 \D9\BE\D8\A7\DA\A9\D8\B3\D8\AA\D8\A7\D9\86 \D8\AF\D8\A7 \D8\B3\DB\8C\D8\A7\D8\B3\DB\8C\D8\8C \D8\B1\DB\81\D8\AA\D9\84\DB\8C \D8\AA\DB\92 \D9\BE\DA\91\DA\BE\D8\A7\D8\A6\DB\8C \D8\AF\D8\A7 \DA\AF\DA\91\DA\BE \D8\A7\DB\92 \D8\AA\DB\92 \D8\A7\D8\B3 \D9\84\D8\A6\DB\8C \D8\A7\DB\8C\DA\BE\D9\86\D9\88\DA\BA \D9\BE\D8\A7\DA\A9\D8\B3\D8\AA\D8\A7\D9\86 \D8\AF\D8\A7 \D8\AF\D9\84 \D9\88\DB\8C \DA\A9\DB\8C\DA\BE\D8\A7 \D8\AC\D8\A7\D9\86\D8\AF\D8\A7 \D8\A7\DB\92\DB\94 \D9\84\DB\81\D9\88\D8\B1 \D8\AF\D8\B1\DB\8C\D8\A7\DB\93 \D8\B1\D8\A7\D9\88\DB\8C \D8\AF\DB\92 \DA\A9\D9\86\DA\88\DA\BE\DB\92 \D8\AA\DB\92 \D9\88\D8\B3\D8\AF\D8\A7 \D8\A7\DB\92 \D8\A7\D8\B3\D8\AF\DB\8C \D9\84\D9\88\DA\A9 \DA\AF\D9\86\D8\AA\DB\8C \D8\A7\DA\A9 \DA\A9\D8\B1\D9\88\DA\91 \D8\AF\DB\92 \D9\86\DB\8C\DA\91\DB\92 \D8\A7\DB\92 \DB\94\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"{T:Transliteration}:\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"{:tranliteration}\0A\00", align 1
@.str.31 = private unnamed_addr constant [374 x i8] c"lahor p\C4\81kist\C4\81n panj\C4\81b d\C4\81 d\C4\81rul hak\C5\ABmat \C4\93. l\C5\8Dk gi\E1\B9\87t\C4\AB d\C4\93 n\C4\81\E1\B8\B7 kar\C4\81c\C4\AB t\C5\8D\E1\B7\88 b\C4\81ad lahor d\C5\ABj\C4\81 sab t\C5\8D\E1\B7\88 va\E1\B8\8D\E1\B8\8D\C4\81 shahr \C4\93. lahor p\C4\81kist\C4\81n d\C4\81 si\C4\81s\C4\AB, rahtal\C4\AB t\C4\93 pa\E1\B9\9B\C4\81\CC\80\C4\AB d\C4\81 g\C4\81\CC\81\E1\B9\9B \C4\93 t\C4\93 is la\C4\AB ihn\C5\AB\E1\B7\88 p\C4\81kist\C4\81n d\C4\81 dil v\C4\AB keh\C4\81 j\C4\81nd\C4\81 \C4\93. lahor dari\C4\81\C4\93 r\C4\81v\C4\AB d\C4\93 kan\E1\B8\8D\C4\93 t\C4\93 vasd\C4\81 \C4\93. isd\C4\AB l\C5\8Dk gi\E1\B9\87t\C4\AB ikk kar\C5\8D\E1\B9\9B d\C4\93 n\C4\93\E1\B9\9B\C4\93 \C4\93.\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"employees\00", align 1
@__const.main.wc = private unnamed_addr constant [7 x i32] [i32 3572, i32 3499, i32 3530, i32 3499, i32 6098, i32 3572, i32 0], align 16
@.str.33 = private unnamed_addr constant [36 x i8] c"Wide char: {lq:wc/%lc - %#lx - %d}\0A\00", align 1
@__const.main.msg = private unnamed_addr constant [5 x i32] [i32 49, i32 847, i32 50, i32 8413, i32 0], align 16
@.str.34 = private unnamed_addr constant [22 x i8] c"Cool: [{:fancy/%ls}]\0A\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"\CE\9F\E1\BD\90\CF\87\E1\BD\B6 \CF\84\CE\B1\E1\BD\90\CF\84\E1\BD\B0 \CF\80\CE\B1\CF\81\E1\BD\B7\CF\83\CF\84\CE\B1\CF\84\CE\B1\E1\BD\B7 \CE\BC\CE\BF\CE\B9 {:v1/%s}, {:v2/%s}\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"\CE\B3\CE\B9\CE\B3\CE\BD\E1\BD\BD\CF\83\CE\BA\CE\B5\CE\B9\CE\BD\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"\E1\BD\A6 \E1\BC\84\CE\BD\CE\B4\CF\81\CE\B5\CF\82 \E1\BE\BF\CE\91\CE\B8\CE\B7\CE\BD\CE\B1\E1\BF\96\CE\BF\CE\B9\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"\E1\83\92\E1\83\97\E1\83\AE\E1\83\9D\E1\83\95\E1\83\97 {:v1/%s} {:v2/%s}\0A\00", align 1
@.str.39 = private unnamed_addr constant [75 x i8] c"\E1\83\90\E1\83\AE\E1\83\9A\E1\83\90\E1\83\95\E1\83\94 \E1\83\92\E1\83\90\E1\83\98\E1\83\90\E1\83\A0\E1\83\9D\E1\83\97 \E1\83\A0\E1\83\94\E1\83\92\E1\83\98\E1\83\A1\E1\83\A2\E1\83\A0\E1\83\90\E1\83\AA\E1\83\98\E1\83\90\00", align 1
@.str.40 = private unnamed_addr constant [68 x i8] c"Unicode-\E1\83\98\E1\83\A1 \E1\83\9B\E1\83\94\E1\83\90\E1\83\97\E1\83\94 \E1\83\A1\E1\83\90\E1\83\94\E1\83\A0\E1\83\97\E1\83\90\E1\83\A8\E1\83\9D\E1\83\A0\E1\83\98\E1\83\A1\E1\83\9D\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"{Twc:Width}{:width/%d}\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"[{:sinhala}]\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"\E0\B7\B4\E0\B6\AB\E0\B7\8A\E0\B6\AB\E0\B7\B4\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"\E0\B7\B4\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"[{:sinhala/%-4..4s/%s}]\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"[{:not-sinhala/%-4..4s/%s}]\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"[{:tag/%s}]\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"\E0\B6\BB\E0\B7\8A\E2\80\8D\E0\B6\9D\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"employee\00", align 1
@.str.51 = private unnamed_addr constant [63 x i8] c"{T:First Name/%-25s}{T:Last Name/%-14s}{T:/%-12s}{T:Time (%)}\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Department\00", align 1
@.str.53 = private unnamed_addr constant [109 x i8] c"{[:-25}{:first-name/%s} ({:nic-name/\22%s\22}){]:}{:last-name/%-14..14s/%s}{:department/%8u}{:percent-time/%8u}\0A\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"full-time\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"honest & for true\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"{e:benefits/%s}\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"full\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8 x %struct.employee], align 16
  %7 = alloca %struct.employee*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [7 x i32], align 16
  %11 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [8 x %struct.employee]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([8 x %struct.employee]* @__const.main.employees to i8*), i64 256, i1 false)
  %13 = getelementptr inbounds [8 x %struct.employee], [8 x %struct.employee]* %6, i64 0, i64 0
  store %struct.employee* %13, %struct.employee** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @xo_parse_args(i32 %14, i8** %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %151

20:                                               ; preds = %2
  %21 = load i32, i32* @info, align 4
  %22 = load i32, i32* @info_count, align 4
  %23 = call i32 @xo_set_info(i32* null, i32 %21, i32 %22)
  %24 = load i32, i32* @XOF_COLUMNS, align 4
  %25 = call i32 @xo_set_flags(i32* null, i32 %24)
  %26 = call i32 @xo_open_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.22, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([712 x i8], [712 x i8]* @.str.25, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([476 x i8], [476 x i8]* @.str.28, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([374 x i8], [374 x i8]* @.str.31, i64 0, i64 0))
  %35 = call i32 @xo_close_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %36 = call i32 @xo_open_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %37 = bitcast [7 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([7 x i32]* @__const.main.wc to i8*), i64 28, i1 false)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %60, %20
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xo_wcwidth(i32 %57)
  %59 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %48, i64 %53, i32 %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %38

63:                                               ; preds = %38
  %64 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([5 x i32]* @__const.main.msg to i8*), i64 20, i1 false)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %87, %63
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xo_wcwidth(i32 %84)
  %86 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %75, i64 %80, i32 %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %65

90:                                               ; preds = %65
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %92 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i32* %91)
  %93 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.40, i64 0, i64 0))
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %95)
  %97 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %98)
  %100 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %101)
  %103 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %104)
  %106 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0))
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %108)
  %110 = call i32 @xo_open_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0))
  br label %112

112:                                              ; preds = %144, %90
  %113 = load %struct.employee*, %struct.employee** %7, align 8
  %114 = getelementptr inbounds %struct.employee, %struct.employee* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = call i32 @xo_open_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0))
  %119 = load %struct.employee*, %struct.employee** %7, align 8
  %120 = getelementptr inbounds %struct.employee, %struct.employee* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.employee*, %struct.employee** %7, align 8
  %123 = getelementptr inbounds %struct.employee, %struct.employee* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.employee*, %struct.employee** %7, align 8
  %126 = getelementptr inbounds %struct.employee, %struct.employee* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.employee*, %struct.employee** %7, align 8
  %129 = getelementptr inbounds %struct.employee, %struct.employee* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.employee*, %struct.employee** %7, align 8
  %132 = getelementptr inbounds %struct.employee, %struct.employee* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.53, i64 0, i64 0), i8* %121, i8* %124, i8* %127, i32 %130, i32 %133)
  %135 = load %struct.employee*, %struct.employee** %7, align 8
  %136 = getelementptr inbounds %struct.employee, %struct.employee* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp ugt i32 %137, 50
  br i1 %138, label %139, label %142

139:                                              ; preds = %117
  %140 = call i32 @xo_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0))
  %141 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %117
  %143 = call i32 @xo_close_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142
  %145 = load %struct.employee*, %struct.employee** %7, align 8
  %146 = getelementptr inbounds %struct.employee, %struct.employee* %145, i32 1
  store %struct.employee* %146, %struct.employee** %7, align 8
  br label %112

147:                                              ; preds = %112
  %148 = call i32 @xo_close_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0))
  %149 = call i32 @xo_close_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %150 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %19
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #2

declare dso_local i32 @xo_set_info(i32*, i32, i32) #2

declare dso_local i32 @xo_set_flags(i32*, i32) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_close_container(i8*) #2

declare dso_local i32 @xo_wcwidth(i32) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @xo_attr(i8*, i8*, i8*) #2

declare dso_local i32 @xo_close_instance(i8*) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @xo_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
