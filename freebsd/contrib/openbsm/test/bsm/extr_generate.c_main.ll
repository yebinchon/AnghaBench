; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@do_records = common dso_local global i64 0, align 8
@do_tokens = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mkdir: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"file_token\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"trailer_token\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"header32_token\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data_token\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ipc_token\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"path_token\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"subject32_token\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"subject32ex_token\00", align 1
@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"process32_token\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"process32ex_token\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"process64_token\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"process64ex_token\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"return32_token\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"text_token\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"opaque_token\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"in_addr_token\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ip_token\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"iport_token\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"arg32_token\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"seq_token\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"zonename_token\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"socketex_token\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"file_record\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"data_record\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ipc_record\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"path_record\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"subject32_record\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"subject32ex_record\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"process32_record\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"process32ex_record\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"process64_record\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"process64ex_record\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"return32_record\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"text_record\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"opaque_record\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"in_addr_record\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"ip_record\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"iport_record\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"arg32_record\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"seq_record\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"zonename_record\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"socketex_record\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %21 [
    i32 114, label %15
    i32 116, label %18
  ]

15:                                               ; preds = %13
  %16 = load i64, i64* @do_records, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @do_records, align 8
  br label %23

18:                                               ; preds = %13
  %19 = load i64, i64* @do_tokens, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @do_tokens, align 8
  br label %23

21:                                               ; preds = %13
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %18, %15
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* @optind, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @optind, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @mkdir(i8* %41, i32 493)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EEXIST, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @EX_OSERR, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @err(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %44, %37
  %53 = load i64, i64* @do_tokens, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %112

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @generate_file_token(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @generate_trailer_token(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @generate_header32_token(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @generate_data_token(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @generate_ipc_token(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @generate_path_token(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @generate_subject32_token(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @AU_IPv4, align 4
  %72 = call i32 @generate_subject32ex_token(i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @AU_IPv6, align 4
  %75 = call i32 @generate_subject32ex_token(i8* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @generate_process32_token(i8* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* @AU_IPv4, align 4
  %80 = call i32 @generate_process32ex_token(i8* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @AU_IPv6, align 4
  %83 = call i32 @generate_process32ex_token(i8* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @generate_process64_token(i8* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @AU_IPv4, align 4
  %88 = call i32 @generate_process64ex_token(i8* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* @AU_IPv6, align 4
  %91 = call i32 @generate_process64ex_token(i8* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @generate_return32_token(i8* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @generate_text_token(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @generate_opaque_token(i8* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @generate_in_addr_token(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @generate_ip_token(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @generate_iport_token(i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @generate_arg32_token(i8* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @generate_seq_token(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @generate_zonename_token(i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @generate_socketex_token(i8* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  br label %112

112:                                              ; preds = %55, %52
  %113 = load i64, i64* @do_records, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %112
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @generate_file_record(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @generate_data_record(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @generate_ipc_record(i8* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @generate_path_record(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @generate_subject32_record(i8* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* @AU_IPv4, align 4
  %128 = call i32 @generate_subject32ex_record(i8* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @AU_IPv6, align 4
  %131 = call i32 @generate_subject32ex_record(i8* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @generate_process32_record(i8* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* @AU_IPv4, align 4
  %136 = call i32 @generate_process32ex_record(i8* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %135)
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @AU_IPv6, align 4
  %139 = call i32 @generate_process32ex_record(i8* %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @generate_process64_record(i8* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0))
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* @AU_IPv4, align 4
  %144 = call i32 @generate_process64ex_record(i8* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* @AU_IPv6, align 4
  %147 = call i32 @generate_process64ex_record(i8* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @generate_return32_record(i8* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @generate_text_record(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @generate_opaque_record(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @generate_in_addr_record(i8* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @generate_ip_record(i8* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0))
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @generate_iport_record(i8* %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @generate_arg32_record(i8* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @generate_seq_record(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 @generate_zonename_record(i8* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0))
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @generate_socketex_record(i8* %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @do_error_records(i8* %168)
  br label %170

170:                                              ; preds = %115, %112
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @generate_file_token(i8*, i8*) #1

declare dso_local i32 @generate_trailer_token(i8*, i8*) #1

declare dso_local i32 @generate_header32_token(i8*, i8*) #1

declare dso_local i32 @generate_data_token(i8*, i8*) #1

declare dso_local i32 @generate_ipc_token(i8*, i8*) #1

declare dso_local i32 @generate_path_token(i8*, i8*) #1

declare dso_local i32 @generate_subject32_token(i8*, i8*) #1

declare dso_local i32 @generate_subject32ex_token(i8*, i8*, i32) #1

declare dso_local i32 @generate_process32_token(i8*, i8*) #1

declare dso_local i32 @generate_process32ex_token(i8*, i8*, i32) #1

declare dso_local i32 @generate_process64_token(i8*, i8*) #1

declare dso_local i32 @generate_process64ex_token(i8*, i8*, i32) #1

declare dso_local i32 @generate_return32_token(i8*, i8*) #1

declare dso_local i32 @generate_text_token(i8*, i8*) #1

declare dso_local i32 @generate_opaque_token(i8*, i8*) #1

declare dso_local i32 @generate_in_addr_token(i8*, i8*) #1

declare dso_local i32 @generate_ip_token(i8*, i8*) #1

declare dso_local i32 @generate_iport_token(i8*, i8*) #1

declare dso_local i32 @generate_arg32_token(i8*, i8*) #1

declare dso_local i32 @generate_seq_token(i8*, i8*) #1

declare dso_local i32 @generate_zonename_token(i8*, i8*) #1

declare dso_local i32 @generate_socketex_token(i8*, i8*) #1

declare dso_local i32 @generate_file_record(i8*, i8*) #1

declare dso_local i32 @generate_data_record(i8*, i8*) #1

declare dso_local i32 @generate_ipc_record(i8*, i8*) #1

declare dso_local i32 @generate_path_record(i8*, i8*) #1

declare dso_local i32 @generate_subject32_record(i8*, i8*) #1

declare dso_local i32 @generate_subject32ex_record(i8*, i8*, i32) #1

declare dso_local i32 @generate_process32_record(i8*, i8*) #1

declare dso_local i32 @generate_process32ex_record(i8*, i8*, i32) #1

declare dso_local i32 @generate_process64_record(i8*, i8*) #1

declare dso_local i32 @generate_process64ex_record(i8*, i8*, i32) #1

declare dso_local i32 @generate_return32_record(i8*, i8*) #1

declare dso_local i32 @generate_text_record(i8*, i8*) #1

declare dso_local i32 @generate_opaque_record(i8*, i8*) #1

declare dso_local i32 @generate_in_addr_record(i8*, i8*) #1

declare dso_local i32 @generate_ip_record(i8*, i8*) #1

declare dso_local i32 @generate_iport_record(i8*, i8*) #1

declare dso_local i32 @generate_arg32_record(i8*, i8*) #1

declare dso_local i32 @generate_seq_record(i8*, i8*) #1

declare dso_local i32 @generate_zonename_record(i8*, i8*) #1

declare dso_local i32 @generate_socketex_record(i8*, i8*) #1

declare dso_local i32 @do_error_records(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
