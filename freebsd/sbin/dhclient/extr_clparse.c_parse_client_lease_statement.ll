; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_lease_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_lease_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { i32, i64, %struct.client_lease*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.interface_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.client_lease*, %struct.client_lease*, %struct.client_lease* }

@LBRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expecting left brace.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no memory for lease.\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unterminated lease declaration.\00", align 1
@RBRACE = common dso_local global i32 0, align 4
@cur_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_client_lease_statement(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca %struct.client_lease*, align 8
  %7 = alloca %struct.client_lease*, align 8
  %8 = alloca %struct.interface_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @next_token(i8** %10, i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @LBRACE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @skip_to_semi(i32* %18)
  br label %245

20:                                               ; preds = %2
  %21 = call %struct.client_lease* @malloc(i32 40)
  store %struct.client_lease* %21, %struct.client_lease** %5, align 8
  %22 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %23 = icmp ne %struct.client_lease* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %28 = call i32 @memset(%struct.client_lease* %27, i32 0, i32 40)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %31 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store %struct.interface_info* null, %struct.interface_info** %8, align 8
  br label %32

32:                                               ; preds = %51, %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @peek_token(i8** %10, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 @parse_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %41 = call i32 @free_client_lease(%struct.client_lease* %40)
  br label %245

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RBRACE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %50 = call i32 @parse_client_lease_declaration(i32* %48, %struct.client_lease* %49, %struct.interface_info** %8)
  br label %51

51:                                               ; preds = %47
  br i1 true, label %32, label %52

52:                                               ; preds = %51, %46
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @next_token(i8** %10, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %56 = icmp ne %struct.interface_info* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %59 = call i32 @free_client_lease(%struct.client_lease* %58)
  br label %245

60:                                               ; preds = %52
  %61 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %62 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %67 = call i32 @make_client_state(%struct.interface_info* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %73 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %74 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store %struct.client_lease* %72, %struct.client_lease** %76, align 8
  br label %245

77:                                               ; preds = %68
  store %struct.client_lease* null, %struct.client_lease** %7, align 8
  %78 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %79 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.client_lease*, %struct.client_lease** %81, align 8
  store %struct.client_lease* %82, %struct.client_lease** %6, align 8
  br label %83

83:                                               ; preds = %132, %77
  %84 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %85 = icmp ne %struct.client_lease* %84, null
  br i1 %85, label %86, label %136

86:                                               ; preds = %83
  %87 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %88 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %92 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %90, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %86
  %97 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %98 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %102 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %106 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcmp(i32 %100, i32 %104, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %96
  %112 = load %struct.client_lease*, %struct.client_lease** %7, align 8
  %113 = icmp ne %struct.client_lease* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %116 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %115, i32 0, i32 2
  %117 = load %struct.client_lease*, %struct.client_lease** %116, align 8
  %118 = load %struct.client_lease*, %struct.client_lease** %7, align 8
  %119 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %118, i32 0, i32 2
  store %struct.client_lease* %117, %struct.client_lease** %119, align 8
  br label %128

120:                                              ; preds = %111
  %121 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %122 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %121, i32 0, i32 2
  %123 = load %struct.client_lease*, %struct.client_lease** %122, align 8
  %124 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %125 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store %struct.client_lease* %123, %struct.client_lease** %127, align 8
  br label %128

128:                                              ; preds = %120, %114
  %129 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %130 = call i32 @free_client_lease(%struct.client_lease* %129)
  br label %136

131:                                              ; preds = %96, %86
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %134 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %133, i32 0, i32 2
  %135 = load %struct.client_lease*, %struct.client_lease** %134, align 8
  store %struct.client_lease* %135, %struct.client_lease** %6, align 8
  br label %83

136:                                              ; preds = %128, %83
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %141 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load %struct.client_lease*, %struct.client_lease** %143, align 8
  %145 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %146 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %145, i32 0, i32 2
  store %struct.client_lease* %144, %struct.client_lease** %146, align 8
  %147 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %148 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %149 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store %struct.client_lease* %147, %struct.client_lease** %151, align 8
  br label %245

152:                                              ; preds = %136
  %153 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %154 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load %struct.client_lease*, %struct.client_lease** %156, align 8
  %158 = icmp ne %struct.client_lease* %157, null
  br i1 %158, label %159, label %239

159:                                              ; preds = %152
  %160 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %161 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.client_lease*, %struct.client_lease** %163, align 8
  %165 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @cur_time, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %159
  %170 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %171 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.client_lease*, %struct.client_lease** %173, align 8
  %175 = call i32 @free_client_lease(%struct.client_lease* %174)
  br label %238

176:                                              ; preds = %159
  %177 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %178 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load %struct.client_lease*, %struct.client_lease** %180, align 8
  %182 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %186 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %184, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %176
  %191 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %192 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load %struct.client_lease*, %struct.client_lease** %194, align 8
  %196 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %200 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %204 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @memcmp(i32 %198, i32 %202, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %190
  %210 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %211 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load %struct.client_lease*, %struct.client_lease** %213, align 8
  %215 = call i32 @free_client_lease(%struct.client_lease* %214)
  br label %237

216:                                              ; preds = %190, %176
  %217 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %218 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load %struct.client_lease*, %struct.client_lease** %220, align 8
  %222 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %223 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load %struct.client_lease*, %struct.client_lease** %225, align 8
  %227 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %226, i32 0, i32 2
  store %struct.client_lease* %221, %struct.client_lease** %227, align 8
  %228 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %229 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %228, i32 0, i32 0
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.client_lease*, %struct.client_lease** %231, align 8
  %233 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %234 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store %struct.client_lease* %232, %struct.client_lease** %236, align 8
  br label %237

237:                                              ; preds = %216, %209
  br label %238

238:                                              ; preds = %237, %169
  br label %239

239:                                              ; preds = %238, %152
  %240 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %241 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %242 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  store %struct.client_lease* %240, %struct.client_lease** %244, align 8
  br label %245

245:                                              ; preds = %239, %139, %71, %57, %38, %16
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local %struct.client_lease* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(%struct.client_lease*, i32, i32) #1

declare dso_local i32 @peek_token(i8**, i32*) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @parse_client_lease_declaration(i32*, %struct.client_lease*, %struct.interface_info**) #1

declare dso_local i32 @make_client_state(%struct.interface_info*) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
