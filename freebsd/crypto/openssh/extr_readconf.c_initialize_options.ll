; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_initialize_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_initialize_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i64, i64, i32*, i32*, i32*, i32*, i64, i32*, i64, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32, i32, i64, i32*, i64, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__, i32*, i64, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@SYSLOG_FACILITY_NOT_SET = common dso_local global i32 0, align 4
@SYSLOG_LEVEL_NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_options(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_6__* %3, i8 signext 88, i32 576)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 96
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 -1, i32* %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 -1, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 95
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 94
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32 -1, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 93
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 92
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 92
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i64 -1, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 92
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  store i32 -1, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 8
  store i32 -1, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  store i32 -1, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 10
  store i32 -1, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 11
  store i32 -1, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 91
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 12
  store i32 -1, i32* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 13
  store i32 -1, i32* %51, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 14
  store i32 -1, i32* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 15
  store i32 -1, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 16
  store i32 -1, i32* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 17
  store i32 -1, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 18
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 19
  store i32 -1, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 20
  store i32 -1, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 21
  store i32 -1, i32* %67, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 22
  store i32 -1, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 90
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 89
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 88
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 87
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 86
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 85
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 84
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 83
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 82
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 81
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 80
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 23
  store i32 -1, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 79
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 78
  store i32* null, i32** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 24
  store i32 -1, i32* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 77
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 76
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 75
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 74
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 73
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 72
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @SYSLOG_FACILITY_NOT_SET, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 71
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SYSLOG_LEVEL_NOT_SET, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 70
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 69
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 68
  store i32* null, i32** %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 67
  store i32* null, i32** %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 66
  store i32* null, i32** %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 25
  store i32 -1, i32* %127, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 26
  store i32 -1, i32* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 27
  store i32 -1, i32* %131, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 28
  store i32 -1, i32* %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 29
  store i32 -1, i32* %135, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 30
  store i32 -1, i32* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 31
  store i32 -1, i32* %139, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 32
  store i32 -1, i32* %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 65
  store i32* null, i32** %143, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 64
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 63
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 62
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 61
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 33
  store i32 -1, i32* %153, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 34
  store i32 -1, i32* %155, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 60
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 35
  store i32 -1, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 36
  store i32 -1, i32* %161, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 37
  store i32 -1, i32* %163, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 38
  store i32 -1, i32* %165, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 59
  store i32* null, i32** %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 39
  store i32 -1, i32* %169, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 58
  store i32* null, i32** %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 40
  store i32 -1, i32* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 57
  store i32* null, i32** %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 41
  store i32 -1, i32* %177, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 42
  store i32 -1, i32* %179, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 43
  store i32 -1, i32* %181, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 44
  store i32 -1, i32* %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 45
  store i32 -1, i32* %185, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 56
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 55
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 54
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 46
  store i32 -1, i32* %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 47
  store i32 -1, i32* %195, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 48
  store i32 -1, i32* %197, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 53
  store i32* null, i32** %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 49
  store i32 -1, i32* %201, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 50
  store i32 -1, i32* %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 52
  store i32* null, i32** %205, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 51
  store i32* null, i32** %207, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
