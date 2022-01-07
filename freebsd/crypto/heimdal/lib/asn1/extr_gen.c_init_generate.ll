; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_init_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_init_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@orig_filename = common dso_local global i8* null, align 8
@headerbase = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@header = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.h\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.hx\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@headerfile = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@privheader = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"%s-priv.h\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s-priv.hx\00", align 1
@privheaderfile = common dso_local global i32* null, align 8
@template = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"%s-template.c\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"/* Generated from %s */\0A/* Do not edit */\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"#ifndef __%s_h__\0A#define __%s_h__\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"#include <stddef.h>\0A#include <time.h>\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"#ifndef __asn1_common_definitions__\0A#define __asn1_common_definitions__\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"typedef struct heim_integer {\0A  size_t length;\0A  void *data;\0A  int negative;\0A} heim_integer;\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [89 x i8] c"typedef struct heim_octet_string {\0A  size_t length;\0A  void *data;\0A} heim_octet_string;\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"typedef char *heim_general_string;\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"typedef char *heim_utf8_string;\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"typedef struct heim_octet_string heim_printable_string;\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"typedef struct heim_octet_string heim_ia5_string;\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [89 x i8] c"typedef struct heim_bmp_string {\0A  size_t length;\0A  uint16_t *data;\0A} heim_bmp_string;\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [101 x i8] c"typedef struct heim_universal_string {\0A  size_t length;\0A  uint32_t *data;\0A} heim_universal_string;\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"typedef char *heim_visible_string;\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"typedef struct heim_oid {\0A  size_t length;\0A  unsigned *components;\0A} heim_oid;\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [85 x i8] c"typedef struct heim_bit_string {\0A  size_t length;\0A  void *data;\0A} heim_bit_string;\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [92 x i8] c"typedef struct heim_octet_string heim_any;\0Atypedef struct heim_octet_string heim_any_set;\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [926 x i8] c"#define ASN1_MALLOC_ENCODE(T, B, BL, S, L, R)                  \\\0A  do {                                                         \\\0A    (BL) = length_##T((S));                                    \\\0A    (B) = malloc((BL));                                        \\\0A    if((B) == NULL) {                                          \\\0A      (R) = ENOMEM;                                            \\\0A    } else {                                                   \\\0A      (R) = encode_##T(((unsigned char*)(B)) + (BL) - 1, (BL), \\\0A                       (S), (L));                              \\\0A      if((R) != 0) {                                           \\\0A        free((B));                                             \\\0A        (B) = NULL;                                            \\\0A      }                                                        \\\0A    }                                                          \\\0A  } while (0)\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [173 x i8] c"#ifdef _WIN32\0A#ifndef ASN1_LIB\0A#define ASN1EXP  __declspec(dllimport)\0A#else\0A#define ASN1EXP\0A#endif\0A#define ASN1CALL __stdcall\0A#else\0A#define ASN1EXP\0A#define ASN1CALL\0A#endif\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"struct units;\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"%s_files\00", align 1
@logfile = common dso_local global i32* null, align 8
@one_code_file = common dso_local global i64 0, align 8
@templatefile = common dso_local global i32* null, align 8
@.str.30 = private unnamed_addr constant [184 x i8] c"/* Generated from %s */\0A/* Do not edit */\0A\0A#include <stdio.h>\0A#include <stdlib.h>\0A#include <time.h>\0A#include <string.h>\0A#include <errno.h>\0A#include <limits.h>\0A#include <krb5-types.h>\0A\00", align 1
@.str.31 = private unnamed_addr constant [98 x i8] c"#include <%s>\0A#include <%s>\0A#include <der.h>\0A#include <der-private.h>\0A#include <asn1-template.h>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_generate(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** @orig_filename, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** @headerbase, align 8
  %12 = load i8*, i8** @headerbase, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** @headerbase, align 8
  %19 = call i64 @asprintf(i8** @header, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @header, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %17
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** @headerbase, align 8
  %28 = call i64 @asprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %26
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @headerfile, align 8
  %39 = load i32*, i32** @headerfile, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %5, align 8
  %47 = load i8*, i8** @headerbase, align 8
  %48 = call i64 @asprintf(i8** @privheader, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** @privheader, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %44
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i8*, i8** @headerbase, align 8
  %57 = call i64 @asprintf(i8** %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %55
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @fopen(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** @privheaderfile, align 8
  %68 = load i32*, i32** @privheaderfile, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @free(i8* %74)
  store i8* null, i8** %5, align 8
  %76 = load i8*, i8** @headerbase, align 8
  %77 = call i64 @asprintf(i8** @template, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** @template, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %73
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32*, i32** @headerfile, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  %88 = load i32*, i32** @headerfile, align 8
  %89 = load i8*, i8** @headerbase, align 8
  %90 = load i8*, i8** @headerbase, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %89, i8* %90)
  %92 = load i32*, i32** @headerfile, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %94 = load i32*, i32** @headerfile, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  %96 = load i32*, i32** @headerfile, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i64 0, i64 0))
  %98 = load i32*, i32** @headerfile, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.14, i64 0, i64 0))
  %100 = load i32*, i32** @headerfile, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %102 = load i32*, i32** @headerfile, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %104 = load i32*, i32** @headerfile, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0))
  %106 = load i32*, i32** @headerfile, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0))
  %108 = load i32*, i32** @headerfile, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.19, i64 0, i64 0))
  %110 = load i32*, i32** @headerfile, align 8
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.20, i64 0, i64 0))
  %112 = load i32*, i32** @headerfile, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %114 = load i32*, i32** @headerfile, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i64 0, i64 0))
  %116 = load i32*, i32** @headerfile, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0))
  %118 = load i32*, i32** @headerfile, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.24, i64 0, i64 0))
  %120 = load i32*, i32** @headerfile, align 8
  %121 = call i32 @fputs(i8* getelementptr inbounds ([926 x i8], [926 x i8]* @.str.25, i64 0, i64 0), i32* %120)
  %122 = load i32*, i32** @headerfile, align 8
  %123 = call i32 @fputs(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.26, i64 0, i64 0), i32* %122)
  %124 = load i32*, i32** @headerfile, align 8
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  %126 = load i32*, i32** @headerfile, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @asprintf(i8** %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %84
  %132 = load i8*, i8** %5, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %84
  %135 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i8*, i8** %5, align 8
  %138 = call i8* @fopen(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %139 = bitcast i8* %138 to i32*
  store i32* %139, i32** @logfile, align 8
  %140 = load i32*, i32** @logfile, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load i64, i64* @one_code_file, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %166

149:                                              ; preds = %145
  %150 = load i8*, i8** @template, align 8
  %151 = call i8* @fopen(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %152 = bitcast i8* %151 to i32*
  store i32* %152, i32** @templatefile, align 8
  %153 = load i32*, i32** @templatefile, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i8*, i8** @template, align 8
  %157 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load i32*, i32** @templatefile, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.30, i64 0, i64 0), i8* %160)
  %162 = load i32*, i32** @templatefile, align 8
  %163 = load i8*, i8** @header, align 8
  %164 = load i8*, i8** @privheader, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.31, i64 0, i64 0), i8* %163, i8* %164)
  br label %166

166:                                              ; preds = %158, %148
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
