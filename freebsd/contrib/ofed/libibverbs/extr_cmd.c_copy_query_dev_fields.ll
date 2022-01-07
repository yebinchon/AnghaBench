; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_copy_query_dev_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_copy_query_dev_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_query_device_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_device_attr*, %struct.ibv_query_device_resp*, i32*)* @copy_query_dev_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_query_dev_fields(%struct.ibv_device_attr* %0, %struct.ibv_query_device_resp* %1, i32* %2) #0 {
  %4 = alloca %struct.ibv_device_attr*, align 8
  %5 = alloca %struct.ibv_query_device_resp*, align 8
  %6 = alloca i32*, align 8
  store %struct.ibv_device_attr* %0, %struct.ibv_device_attr** %4, align 8
  store %struct.ibv_query_device_resp* %1, %struct.ibv_query_device_resp** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %8 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %7, i32 0, i32 39
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %12 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %11, i32 0, i32 38
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %15 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %14, i32 0, i32 38
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %17 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %16, i32 0, i32 37
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %20 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %19, i32 0, i32 37
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %22 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %21, i32 0, i32 36
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %24, i32 0, i32 36
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %27 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %26, i32 0, i32 35
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %29, i32 0, i32 35
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %32 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %31, i32 0, i32 34
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %35 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %34, i32 0, i32 34
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %36, i32 0, i32 33
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %40 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %39, i32 0, i32 33
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %42 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %41, i32 0, i32 32
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %45 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %44, i32 0, i32 32
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %47 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %46, i32 0, i32 31
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %50 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %49, i32 0, i32 31
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %52 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %51, i32 0, i32 30
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %55 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %54, i32 0, i32 30
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %57 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %56, i32 0, i32 29
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %60 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %59, i32 0, i32 29
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %62 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %61, i32 0, i32 28
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %64, i32 0, i32 28
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %67 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %66, i32 0, i32 27
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %70 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %69, i32 0, i32 27
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %72 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %71, i32 0, i32 26
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %74, i32 0, i32 26
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %77 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %76, i32 0, i32 25
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %80 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %79, i32 0, i32 25
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %82 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %81, i32 0, i32 24
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %85 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %84, i32 0, i32 24
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %87 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %86, i32 0, i32 23
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %90 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %89, i32 0, i32 23
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %92 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %91, i32 0, i32 22
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %95 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %94, i32 0, i32 22
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %97 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %100 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %99, i32 0, i32 21
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %102 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %101, i32 0, i32 20
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %105 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %104, i32 0, i32 20
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %107 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %106, i32 0, i32 19
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %110 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %109, i32 0, i32 19
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %112 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %111, i32 0, i32 18
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %115 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %114, i32 0, i32 18
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %117 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %116, i32 0, i32 17
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %120 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %119, i32 0, i32 17
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %122 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %125 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %124, i32 0, i32 16
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %127 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %126, i32 0, i32 15
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %130 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %129, i32 0, i32 15
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %132 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %135 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %134, i32 0, i32 14
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %137 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %140 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %139, i32 0, i32 13
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %142 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %145 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 4
  %146 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %147 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %150 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %152 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %155 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %154, i32 0, i32 10
  store i32 %153, i32* %155, align 4
  %156 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %157 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %160 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %162 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %165 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  %166 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %167 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %170 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  %171 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %172 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %175 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %177 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %180 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %182 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %185 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %187 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %190 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %192 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %195 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %197 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %200 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ibv_query_device_resp*, %struct.ibv_query_device_resp** %5, align 8
  %202 = getelementptr inbounds %struct.ibv_query_device_resp, %struct.ibv_query_device_resp* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ibv_device_attr*, %struct.ibv_device_attr** %4, align 8
  %205 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
